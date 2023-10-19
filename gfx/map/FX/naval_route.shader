Includes = {
	"cw/shadow.fxh"
	"cw/utility.fxh"
	"jomini/jomini_lighting.fxh"
	"jomini/jomini_spline.fxh"
	"sharedconstants.fxh"
	"distance_fog.fxh"
	"fog_of_war.fxh"
	# MOD(map-skybox)
	"gh_camera_utils.fxh"
	# END MOD
}

PixelShader =
{
	TextureSampler DiffuseTexture0
	{
		Ref = PdxTexture0
		MagFilter = "Linear"
		MinFilter = "Linear"
		MipFilter = "Linear"
		SampleModeU = "Wrap"
		SampleModeV = "Wrap"
	}
	TextureSampler NormalTexture0
	{
		Ref = PdxTexture1
		MagFilter = "Linear"
		MinFilter = "Linear"
		MipFilter = "Linear"
		SampleModeU = "Wrap"
		SampleModeV = "Wrap"
	}
	TextureSampler MaterialTexture0
	{
		Ref = PdxTexture2
		MagFilter = "Linear"
		MinFilter = "Linear"
		MipFilter = "Linear"
		SampleModeU = "Wrap"
		SampleModeV = "Wrap"
	}
	TextureSampler DiffuseTexture1
	{
		Ref = PdxTexture3
		MagFilter = "Linear"
		MinFilter = "Linear"
		MipFilter = "Linear"
		SampleModeU = "Wrap"
		SampleModeV = "Wrap"
	}
	TextureSampler NormalTexture1
	{
		Ref = PdxTexture4
		MagFilter = "Linear"
		MinFilter = "Linear"
		MipFilter = "Linear"
		SampleModeU = "Wrap"
		SampleModeV = "Wrap"
	}
	TextureSampler MaterialTexture1
	{
		Ref = PdxTexture5
		MagFilter = "Linear"
		MinFilter = "Linear"
		MipFilter = "Linear"
		SampleModeU = "Wrap"
		SampleModeV = "Wrap"
	}

	TextureSampler EnvironmentMap
	{
		Ref = JominiEnvironmentMap
		MagFilter = "Linear"
		MinFilter = "Linear"
		MipFilter = "Linear"
		SampleModeU = "Clamp"
		SampleModeV = "Clamp"
		Type = "Cube"
	}
	TextureSampler ShadowTexture
	{
		Ref = PdxShadowmap
		MagFilter = "Linear"
		MinFilter = "Linear"
		MipFilter = "Linear"
		SampleModeU = "Clamp"
		SampleModeV = "Clamp"
		CompareFunction = less_equal
		SamplerType = "Compare"
	}

	MainCode PixelShader
	{
		Input = "VS_OUTPUT"
		Output = "PDX_COLOR"
		Code
		[[

			PDX_MAIN
			{
				float2 UV = Input.UV;

				float4 Diffuse;
				float4 Material;
				float4 NormalSample;

				// Sample the textures
				// We only need to sample both texture sets when _FlatmapLerp is between 0 and 1
				if( _FlatmapLerp <= 0.0f )
				{
					Diffuse = PdxTex2D( DiffuseTexture0, UV );
					Material = PdxTex2D( MaterialTexture0, UV );
					NormalSample = PdxTex2D( NormalTexture0, UV );
				}
				else if( _FlatmapLerp >= 1.0f )
				{
					Diffuse = PdxTex2D( DiffuseTexture1, UV );
					Material = PdxTex2D( MaterialTexture1, UV );
					NormalSample = PdxTex2D( NormalTexture1, UV );
				}
				else
				{
					Diffuse = PdxTex2D( DiffuseTexture0, UV );
					Material = PdxTex2D( MaterialTexture0, UV );
					NormalSample = PdxTex2D( NormalTexture0, UV );

					Diffuse = lerp( Diffuse, PdxTex2D( DiffuseTexture1, UV ), _FlatmapLerp );
					Material = lerp( Material, PdxTex2D( MaterialTexture1, UV ), _FlatmapLerp );
					NormalSample = lerp( NormalSample, PdxTex2D( NormalTexture1, UV ), _FlatmapLerp );
				}

				// Normals
				float3 UnpackedNormalSample = UnpackRRxGNormal( NormalSample );
				float3 Tangent = normalize( Input.Tangent );
				float3 Normal = float3( 0.0f, 1.0f, 0.0f );
				float3 Bitangent = normalize( cross( Normal, Tangent ) );
				float3x3 TBN = Create3x3( Tangent, Bitangent, Normal );

				Normal = normalize( mul( UnpackedNormalSample, TBN ) );

				// Material and color
				float3 Color = Diffuse.rgb;
				SMaterialProperties MaterialProps = GetMaterialProperties( Diffuse.rgb, Normal, Material.a, Material.g, Material.b );
				SLightingProperties LightingProps = GetSunLightingProperties( Input.WorldSpacePos, ShadowTexture );
				#ifndef LOW_QUALITY_SHADERS
					Color = CalculateSunLighting( MaterialProps, LightingProps, EnvironmentMap );
				#endif

				// Fog of war
				Color = lerp( ApplyFogOfWar( Color, Input.WorldSpacePos ), Color, _FlatmapLerp );

				// Distance fog
				Color = GameApplyDistanceFog( Color, Input.WorldSpacePos );

				DebugReturn( Color, MaterialProps, LightingProps, EnvironmentMap );

				// MOD(map-skybox)
				Diffuse.a *= GH_GetDefaultCameraPitchAlphaMultiplier();
				// END MOD

				return float4( Color.rgb, Diffuse.a );
			}
		]]
	}
}
BlendState BlendState
{
	BlendEnable = yes
	SourceBlend = "src_alpha"
	DestBlend = "inv_src_alpha"
	WriteMask = "RED|GREEN|BLUE"
}

RasterizerState RasterizerState
{
	DepthBias = -50000
	#fillmode = wireframe
	#CullMode = none
}

DepthStencilState DepthStencilState
{
	DepthWriteEnable = no
}

Effect Default
{
	VertexShader = "VertexShader"
	PixelShader = "PixelShader"
}
