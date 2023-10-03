# Comes directly from https://github.com/terrapass/ck3-modutil-skybox/blob/master/mod/gfx/FX/gh_camera_utils.fxh
# The shader that uses this also needs "cw/camera.fxh"
PixelShader
{
	Code [[
		float GH_GetCameraPitchCos()
		{
			float3 CameraLookAtDirXZ = float3(CameraLookAtDir.x, 0.0f, CameraLookAtDir.z);

			return dot(CameraLookAtDir, CameraLookAtDirXZ);
		}

		float GH_GetCameraPitchAlphaMultiplier(float FullAlphaPitchCos, float MaxAlphaPitchCos)
		{
			return 1.0f - smoothstep(FullAlphaPitchCos, MaxAlphaPitchCos, GH_GetCameraPitchCos());
		}

		// Used to conditionally fade out elements below a certain tilt
		float GH_GetDefaultCameraPitchAlphaMultiplier()
		{
			static const float FULL_CAMERA_PITCH_COS = 0.7f;
			static const float MAX_CAMERA_PITCH_COS  = 0.77f;

			return GH_GetCameraPitchAlphaMultiplier(FULL_CAMERA_PITCH_COS, MAX_CAMERA_PITCH_COS);
		}
		// Used to conditionally hide elements below a certain tilt
		bool SKY_IsCameraTilted()
		{
		    static const float MIN_CAMERA_PITCH_COS = 0.8f;

		    float3 CameraLookAtDirXZ = float3(CameraLookAtDir.x, 0.0f, CameraLookAtDir.z);
		    float  CameraPitchCos    = dot(CameraLookAtDir, CameraLookAtDirXZ);

		    return CameraPitchCos > MIN_CAMERA_PITCH_COS;
		}
	]]
}
