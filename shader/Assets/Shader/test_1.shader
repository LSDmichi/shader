Shader "Custom/test_1" {
	Properties {
		_Metallic ("Metallic", Range(0,1)) = 0.0
		_Smoothness ("Smoothness", Range(0,1)) = 0.0
	}
	SubShader {
		Tags { "Queue" = "Transparent" }
		LOD 200

		CGPROGRAM
		#pragma surface surf Standard alpha:fade 
		#pragma target 3.0

		struct Input{
			float2 uv_MainTex;
		};

		half _Metallic;
		half _Smoothness;

		void surf (Input IN, inout SurfaceOutputStandard o){
			o.Albedo = fixed4(0.3f, 0.6f, 0.5f, 1);
			o.Alpha = 0.5;
			o.Metallic = _Metallic;
			o.Smoothness = _Smoothness;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
