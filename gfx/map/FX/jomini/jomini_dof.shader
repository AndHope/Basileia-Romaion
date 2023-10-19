Includes = {
	"jomini/jomini_dof.fxh"
	# MOD(map-skybox)
	"gh_camera_utils.fxh"
	# END MOD
}

supports_additional_shader_options = {
	USE_CENTER_DEPTH
}

PixelShader =
{
	TextureSampler MainScene
	{
		Ref = PdxTexture0
		MagFilter = "Linear"
		MinFilter = "Linear"
		MipFilter = "Point"
		SampleModeU = "Clamp"
		SampleModeV = "Clamp"
	}
	TextureSampler DepthOfFieldCoc
	{
		Ref = PdxTexture1
		MagFilter = "Point"
		MinFilter = "Point"
		MipFilter = "Point"
		SampleModeU = "Clamp"
		SampleModeV = "Clamp"
	}

	MainCode PixelShaderCoc
	{
		Input = "VS_OUTPUT_FULLSCREEN"
		Output = "PDX_COLOR"
		Code
		[[
			PDX_MAIN
			{
			#ifdef USE_CENTER_DEPTH
				// Use the center texel of the depth buffer
				float FocusDepth = GetViewSpaceDepth( float2( 0.5f, 0.5f ), ScreenResolution );
			#else
				// Use focus depth provided from c++ code
				float FocusDepth = _FocusDepth;
			#endif
				
				float HeightScaling = RemapClamped( FocusDepth, _HeightMin, _HeightMax, 0.0f, 1.0f );
				// MOD
				// NOTE: This shader is weird, I think the red channel of this PixelShaderCoc is actually the alpha of the DOF effect
				HeightScaling *= SKY_IsCameraTilted() ? 0.0f : HeightScaling;
				// END MOD
				float BlurAmount = lerp( _BlurMin, _BlurMax, HeightScaling );
				BlurAmount = _BlurScale * pow( BlurAmount, _BlurExponent );

				// Slower, fixes out-of-focus objects overlapping in-focus objects
				float Coc = GetAverageCoc( Input.uv, InvScreenResolution, ScreenResolution, FocusDepth, BlurAmount );
				
				// Faster, Standard Coc grab
				//float Depth = GetViewSpaceDepth( Input.uv, ScreenResolution );
				//float Coc = GetCoc( Depth, FocusDepth, BlurAmount );

				return float4( Coc, 0.0f, 0.0f, 0.0f );
			}
		]]
	}

	MainCode PixelShaderDownsample
	{
		Input = "VS_OUTPUT_FULLSCREEN"
		Output = "PDX_COLOR"
		Code
		[[
			PDX_MAIN
			{
				float4 Color = PdxTex2DLod0( MainScene, Input.uv );

				float4 Offset = InvScreenResolution.xyxy * float2( -0.5, 0.5 ).xxyy;
				float Coc0 = PdxTex2DLod0( DepthOfFieldCoc, Input.uv + Offset.xy ).r;
				float Coc1 = PdxTex2DLod0( DepthOfFieldCoc, Input.uv + Offset.zy ).r;
				float Coc2 = PdxTex2DLod0( DepthOfFieldCoc, Input.uv + Offset.xw ).r;
				float Coc3 = PdxTex2DLod0( DepthOfFieldCoc, Input.uv + Offset.zw ).r;
				float CocMin = min( min( min( Coc0, Coc1 ), Coc2 ), Coc3 );
				float CocMax = max( max( max( Coc0, Coc1 ), Coc2 ), Coc3 );
				float Coc = CocMax <= -CocMin ? CocMax : CocMin;

				return float4( Color.rgb, Coc );
			}
		]]
	}

	
	MainCode PixelShaderDepthofField
	{
		Input = "VS_OUTPUT_FULLSCREEN"
		Output = "PDX_COLOR"
		Code
		[[
			PDX_MAIN
			{
				float3 DofColor = DepthOfField( Input.uv, _InvDownSampledResolution, ScreenResolution, MainScene );

				return float4( DofColor, 0.0f );
			}
		]]
	}

}


BlendState BlendState
{
	BlendEnable = no
}

DepthStencilState DepthStencilState
{
	DepthEnable = no
	DepthWriteEnable = no
}

Effect Downsample
{
	VertexShader = "VertexShaderFullscreen"
	PixelShader = "PixelShaderDownsample"
}

Effect DepthOfField
{
	VertexShader = "VertexShaderFullscreen"
	PixelShader = "PixelShaderDepthofField"
}

Effect CircleOfConfusion
{
	VertexShader = "VertexShaderFullscreen"
	PixelShader = "PixelShaderCoc"
}

#// MSAA 
Effect DepthOfFieldMsaa
{
	VertexShader = "VertexShaderFullscreen"
	PixelShader = "PixelShaderDepthofField"

	Defines = { "MULTI_SAMPLED" }
}
Effect CircleOfConfusionMsaa
{
	VertexShader = "VertexShaderFullscreen"
	PixelShader = "PixelShaderCoc"

	Defines = { "MULTI_SAMPLED" }
}