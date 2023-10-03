Includes = {
	"jomini/jomini.fxh"
	"jomini/jomini_fog_of_war.fxh"
	"cw/utility.fxh"
}

PixelShader = {
	ConstantBuffer( GameFogOfWar )
	{
		float4 _FoWShadowColor;
		float4 _FoWCloudsColor;
		float4 _FoWCloudsColorGradient;
		float4 _FoWCloudsColorSunset;
		float4 _FoWCloudsColorSunsetGradient;
		float4 _FoWCloudsColorNight;
		float4 _FoWCloudsColorNightGradient;
		float2 _FoWMasterUVScale;
		float2 _FoWMasterUVSpeed;
		float2 _FoWLayer1Speed;
		float2 _FoWLayer2Speed;
		float2 _FoWLayer3Speed;

		float _FoWCloudsColorDayGradientMin;
		float _FoWCloudsColorDayGradientMax;
		float _FoWCloudsColorSunsetGradientMin;
		float _FoWCloudsColorSunsetGradientMax;
		float _FoWCloudsColorNightGradientMin;
		float _FoWCloudsColorNightGradientMax;

		float _FoWCloudHeight;
		float _CloudNormalStrength;

		float _CloudAmbientValue;
		float _CloudLightMultiplier;
		float _CloudLightMin;
		float _CloudLightMax;

		float _CloudSunsetColorValueMin;
		float _CloudSunsetColorValueMax;

		float _FoWShadowMult;
		float _FoWShadowTexStart;
		float _FoWShadowTexStop;

		float _FoWShadowAlphaStart;
		float _FoWShadowAlphaStop;

		float _FowShadowLayer1Min;
		float _FowShadowLayer1Max;
		float _FowShadowLayer2Min;
		float _FowShadowLayer2Max;
		float _FowShadowLayer3Min;
		float _FowShadowLayer3Max;

		float _FoWCloudsAlphaStart;
		float _FoWCloudsAlphaStop;

		float _FoWMasterStart;
		float _FoWMasterStop;
		int _FoWMasterUVTiling;
		float _FoWMasterUVRotation;

		float _FoWLayer1Min;
		float _FoWLayer1Max;
		int _FoWLayer1Tiling;

		float _FoWLayer2Min;
		float _FoWLayer2Max;
		float _FoWLayer2Balance;
		int _FoWLayer2Tiling;

		float _FoWLayer3Min;
		float _FoWLayer3Max;
		float _FoWLayer3Balance;
		int _FoWLayer3Tiling;

		float _FoWShowAlphaMask;
	}

	#// Fog of war fade out on close zoom
	Code [[
		#define FowFadeEnd			150.0
		#define FowFadeStart		101.0
	]]

	TextureSampler FogOfWarAlpha
	{
		Ref = JominiFogOfWar
		MagFilter = "Linear"
		MinFilter = "Linear"
		MipFilter = "Linear"
		SampleModeU = "Wrap"
		SampleModeV = "Wrap"
	}
	TextureSampler FogOfWarNoise
	{
		Ref = GameFogOfWarNoise
		MagFilter = "Linear"
		MinFilter = "Linear"
		MipFilter = "Linear"
		SampleModeU = "Wrap"
		SampleModeV = "Wrap"
	}
	TextureSampler FogOfWarNormal
	{
		Ref = GameFogOfWarNormal
		MagFilter = "Linear"
		MinFilter = "Linear"
		MipFilter = "Linear"
		SampleModeU = "Wrap"
		SampleModeV = "Wrap"
	}
	Code [[

		// mod
		float SampleFowNoiseLowSpec( in float3 Coordinate )
		{
			return 0.0;
		}

		float SampleFowNoise( in float3 Coordinate, inout float3 Normal )
		{
			return 0.0;
		}

		float SampleFowReflection( in float2 Coordinate )
		{
			return 0.0;
		}

		float SampleFowNoiseShadow( in float3 Coordinate )
		{
			return 0.0;
		}
		// end mod
		float3 GameApplyFogOfWar( in float3 Color, in float3 Coordinate, float ShadowMultiplier = 1.0 )
		{
			#ifdef PDX_DEBUG_FOW_OFF
				return Color;
			#endif

			#ifdef JOMINI_DISABLE_FOG_OF_WAR
				return Color;
			#endif

			// Alpha fade
			float FadeStart = FowFadeEnd - FowFadeStart;
			float DistanceBlend = FadeStart - CameraPosition.y + FowFadeStart;
			DistanceBlend = RemapClamped( DistanceBlend, 0.0, FadeStart, 0.0, 1.0 );

			float Alpha = 1.0 - PdxTex2D( FogOfWarAlpha, Coordinate.xz * InverseWorldSize ).r;
			Alpha = lerp( Alpha, 0.0, DistanceBlend );

			#ifdef PDX_DEBUG_FOW_MASK
				return float4( Alpha.rrr, 1.0f );
			#endif
			if( _FoWShowAlphaMask > 0.0f )
			{
				return vec3( 1.0f - Alpha );
			}

			float ShadowAlpha = smoothstep( _FoWShadowAlphaStart, _FoWShadowAlphaStop, Alpha ) * _FoWShadowColor.a;
			float CloudsAlpha = smoothstep( _FoWCloudsAlphaStart, _FoWCloudsAlphaStop, Alpha ) * _FoWCloudsColor.a;

			// Paralax offset
			float3 ToCam = normalize( CameraPosition - Coordinate );
			float ParalaxDist = ( _FoWCloudHeight - Coordinate.y ) / ToCam.y;
			float3 ParalaxCoord = Coordinate + ToCam * ParalaxDist;

			// Sun shadow offset
			float ShadowCordDist = ( _FoWCloudHeight - Coordinate.y ) / ToSunDir.y;
			Coordinate =  Coordinate + ToSunDir * ShadowCordDist;

			// Cloud and shadow texture
			float3 Normal = float3( 0.0, 1.0, 0.0 );
			#ifdef LOW_QUALITY_SHADERS
				float CloudTex = smoothstep( _FoWMasterStart, _FoWMasterStop, SampleFowNoiseLowSpec( ParalaxCoord ) );
				float ShadowTex = smoothstep( _FoWShadowTexStart, _FoWShadowTexStop, SampleFowNoiseLowSpec( Coordinate ) );
			#else
				float CloudTex = smoothstep( _FoWMasterStart, _FoWMasterStop, SampleFowNoise( ParalaxCoord, Normal ) );
				float ShadowTex = smoothstep( _FoWShadowTexStart, _FoWShadowTexStop, SampleFowNoiseShadow( Coordinate ) );
			#endif

			// Apply clouds
			float GradientControlDay = smoothstep( _FoWCloudsColorDayGradientMin, _FoWCloudsColorDayGradientMax, CloudTex );
			float3 CloudsColor = lerp( _FoWCloudsColorGradient.rgb, _FoWCloudsColor.rgb, GradientControlDay ) ;

			float GradientControlSunset = smoothstep( _FoWCloudsColorSunsetGradientMin, _FoWCloudsColorSunsetGradientMax, CloudTex );
			float3 CloudsColorSunset = lerp( _FoWCloudsColorSunsetGradient.rgb, _FoWCloudsColorSunset.rgb, GradientControlSunset );

			float GradientControlNight = smoothstep( _FoWCloudsColorNightGradientMin, _FoWCloudsColorNightGradientMax, CloudTex );
			float3 CloudsColorNight = lerp( _FoWCloudsColorNightGradient.rgb, _FoWCloudsColorNight.rgb, GradientControlNight );

			// Apply sunset and night color
			float SunsetValue = 0.0;
			float SunsetValueClose = 0.0;
			if ( _DayNightValue >= 0.5 )
			{
				SunsetValue = 1.0;
				SunsetValueClose = 1.0;
			}
			else
			{
				SunsetValue = Remap( _DayNightValue, 0.0f, 0.5, 0.0, 1.0 );
				SunsetValueClose = RemapClamped( _DayNightValue, _CloudSunsetColorValueMin, _CloudSunsetColorValueMax, 0.0, 1.0 );
			}
			CloudsColor = lerp( CloudsColor, CloudsColorSunset, SunsetValue );
			CloudsColor = lerp( CloudsColor, CloudsColorNight, SunsetValueClose );

			// Normal calculation
			float SunsetIntensityValue = smoothstep( 0.5, 1.0, SunsetValue );
			float SunValue = lerp( 1.0, 0.0, SunsetIntensityValue );
			float NightIntensityValue = smoothstep( 0.0, 0.5, _NightValue );
			SunValue = lerp( SunValue, 1.0, NightIntensityValue );
			float3 SunDir = ToSunDir;
			float NdotL = saturate( dot( Normal, SunDir ) + 1e-5 );
			CloudsColor *= _CloudAmbientValue;
			float CloudBrightScale = saturate( smoothstep( _CloudLightMin, _CloudLightMax, NdotL ) );
			CloudsColor += ( CloudsColor * CloudBrightScale * SunValue * _CloudLightMultiplier );

			// Apply Fog of war and cloud shadow
			float3 FinalColor = lerp( Color, _FoWShadowColor.rgb, _FoWShadowMult * ShadowAlpha );					// Fow darkness
			FinalColor = lerp( FinalColor, _FoWShadowColor.rgb, _FoWShadowMult * ShadowTex * ShadowMultiplier * SunValue );	// Cloud Shadow
			FinalColor = lerp( FinalColor, CloudsColor, CloudTex * CloudsAlpha );

			return FinalColor;
		}
		// Post process
		float4 GameApplyFogOfWar( in float3 WorldSpacePos, PdxTextureSampler2D FogOfWarAlphaMask )
		{
			#ifdef PDX_DEBUG_FOW_OFF
			return vec4(0);
			#endif

			float Alpha = GetFogOfWarAlpha( WorldSpacePos, FogOfWarAlphaMask );

			#ifdef PDX_DEBUG_FOW_MASK
			return float4( Alpha.rrr, 1.0f );
			#endif

			return FOG_OF_WAR_BLEND_FUNCTION( Alpha );
		}

		#undef ApplyFogOfWar
		#define ApplyFogOfWar GameApplyFogOfWar
	]]
}
