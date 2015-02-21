﻿static const float PI = 3.14159265358979323846;
static const float TWO_PI = PI * 2.0;
static const float HALF_PI = PI * 0.5;
static const float EPSILON = 0.001;

sampler2D _MainTex;
float4 _MainTex_TexelSize;

sampler2D _CameraNormalsTexture;
sampler2D _CameraDepthTexture;
sampler2D _CameraDepthNormalsTexture;

sampler2D _LightBuffer;
samplerCUBE _ShadowMapTexture;

float4 unity_LightmapST;
sampler2D unity_Lightmap;
sampler2D unity_LightmapInd;
float4 unity_LightmapFade;

float _Fresnel;
float4 _Shadows;
float4 _Params;

samplerCUBE _Box;
float3 _BoxPos;
float3 _BoxSize;

struct v2f_light {
	float4 pos : POSITION;
	float2 uv : TEXCOORD0;
	float3 TtoW0 : TEXCOORD1;
	float3 TtoW1 : TEXCOORD2;
	float3 TtoW2 : TEXCOORD3;
	float3 viewDir : TEXCOORD4;
};

struct v2f_uber {
	float4 pos : POSITION;
	float4 color : COLOR;
	float4 uv : TEXCOORD0;
	float4 screen : TEXCOORD1;
	float4 TtoW0 : TEXCOORD2;
	float4 TtoW1 : TEXCOORD3;
	float4 TtoW2 : TEXCOORD4;
	float3 viewDir : TEXCOORD5;
	float3 worldPos : TEXCOORD6;
	float4 multi : TEXCOORD7;
};