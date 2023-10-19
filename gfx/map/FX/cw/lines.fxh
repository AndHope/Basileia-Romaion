Includes = {
	# MOD(map-skybox)
	"cw/camera.fxh"
	"gh_camera_utils.fxh"
	# END MOD
}


VertexStruct VS_INPUT3D
{
    float3 Position			: POSITION;
    float3 Normal			: NORMAL;
    float3 Tangent			: TEXCOORD0;
	float2 UV				: TEXCOORD1;
	uint VertexID			: PDX_VertexID;
};

VertexStruct VS_OUTPUT_PDXLINES
{
    float4 Position			: PDX_POSITION;
    float3 Normal			: NORMAL;
    float3 Tangent			: TEXCOORD0;
	float3 Bitangent		: TEXCOORD1;
	float3 WorldSpacePos	: TEXCOORD2;
	float2 UV				: TEXCOORD3;
	float2 MaskUV			: TEXCOORD4;
	float2 UV0To1			: TEXCOORD5;
};

ConstantBuffer( PdxConstantBuffer0 )
{
	float4		TintColor;
	float2		UVScale;
	float2		UVOffsetScale;
	float2		MaskUVScale;
	float		Width;
	float		LineLength;
	float		Progress;
	float		AnimationTime;
};

VertexShader =
{
	Code
	[[
		struct VS_PDXLINES
		{
			float4 Position;
			float3 Normal;
			float3 Tangent;
			float3 Bitangent;
			float3 WorldSpacePos;
			float2 UV;
			float2 MaskUV;
			float2 UV0To1;
		};	
		
		VS_PDXLINES PdxLinesVertexShader( VS_INPUT3D Input )
		{
			VS_PDXLINES Out;
			
			Out.Bitangent = cross( Input.Normal, Input.Tangent );
			float3 SideVec = Out.Bitangent * (((Input.VertexID % 2) == 0) ? 1.0 : -1.0);
			
			Out.WorldSpacePos = Input.Position + SideVec * Width * 0.5;
			
			Out.Position = FixProjectionAndMul( ViewProjectionMatrix, float4( Out.WorldSpacePos, 1.0 ) );
			Out.Normal = Input.Normal;
			Out.Tangent = Input.Tangent;
			Out.UV0To1 = Input.UV;
			
			Out.UV = Input.UV * UVScale;
			Out.UV.x *= LineLength;
			Out.UV += UVOffsetScale * AnimationTime;
			
			Out.MaskUV = Input.UV * MaskUVScale;
			Out.MaskUV.x *= LineLength;
			
			return Out;
		}
		
		VS_OUTPUT_PDXLINES PdxLinesConvertOutput( VS_PDXLINES VS )
		{
			VS_OUTPUT_PDXLINES Out;
			
			Out.Position	  = VS.Position;
			Out.Normal	      = VS.Normal;
			Out.Tangent	      = VS.Tangent;
			Out.Bitangent	  = VS.Bitangent;
			Out.WorldSpacePos = VS.WorldSpacePos;
			Out.UV	          = VS.UV;
			Out.MaskUV		  = VS.MaskUV;
			Out.UV0To1	      = VS.UV0To1;
			
			return Out;
		}
	]]

	MainCode VS_standard
	{
		Input = "VS_INPUT3D"
		Output = "VS_OUTPUT_PDXLINES"
		Code
		[[
			PDX_MAIN
			{
				return PdxLinesConvertOutput( PdxLinesVertexShader( Input ) );
			}
		]]
	}
}

PixelShader
{
	Code
	[[
		float4 SampleMask( float2 MaskUV, in PdxTextureSampler2D Texture )
		{
			float2 DDX = ddx( MaskUV );
			float2 DDY = ddy( MaskUV );
			
			// This part tiles the texture from U 0.25 -> 0.75
			float MaxU = MaskUVScale.x * LineLength * Progress;
			if ( MaxU < 1.0 ) // If we are smaller than 1 tile, sample from the tip of the texture
			{
				MaskUV.x += 1.0 - MaxU;
			}
			else if ( MaskUV.x > (MaxU - 0.25) ) // Should we sample the "tip" of the texture
			{
				MaskUV.x -= MaxU - 1.0;
			}
			else if ( MaskUV.x > 0.25 ) // In the middle we repeat the texture
			{
				MaskUV.x = mod( MaskUV.x - 0.25, 0.5 ) + 0.25;
			}

			return PdxTex2DGrad( Texture, MaskUV, DDX, DDY );
		}
	]]
	
	MainCode PS_standard
	{
		Input = "VS_OUTPUT_PDXLINES"
		Output = "PDX_COLOR"
		Code
		[[
			PDX_MAIN
			{
				float ProgressFactor = Progress - Input.UV0To1.x;
				clip( ProgressFactor );
				
				float4 Diffuse = PdxTex2D( DiffuseTexture, Input.UV );
				Diffuse *= TintColor;
				
				float4 Mask = SampleMask( Input.MaskUV, MaskTexture );

				// MOD(map-skybox)
				float4 Out = float4( Diffuse * Mask );
				Out.a *= GH_GetDefaultCameraPitchAlphaMultiplier();
				return Out;
				//return float4( Diffuse * Mask );
				// END MOD

			}
		]]
	}
	
	MainCode PS_shadow
	{
		Input = "VS_OUTPUT_PDXLINES"
		Output = "void"
		Code 
		[[
			PDX_MAIN
			{
				float ProgressFactor = Progress - Input.UV0To1.x;
				clip( ProgressFactor );
				
				float Diffuse = PdxTex2D( DiffuseTexture, Input.UV ).a;
				float Mask = SampleMask( Input.MaskUV, MaskTexture ).a;
				
				float Alpha = Diffuse * TintColor.a * Mask;
				clip( Alpha - 0.5 );
			}
		]]
	}
}