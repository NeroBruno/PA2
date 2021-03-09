Shader "My/Phong"
{
    Properties
    {
        _color("color",color)
    }
    SubShader
    { 
        Tags { "RenderType"="Opaque" }
        LOD 100

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float3 normaç : NORMAL;
            };

            struct v2f
            {
                float4 vertex : POSITION;
                float3 ndot1 : TEXCOORD1;
            };

            uniform float4 _Color;

            v2f vert(appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.normal = normalize(v.normal);
                o.ldir = normalize(_WorldSpaceLightPos0.xyz);
                return o;
            }

            fixed4 frag(v2f i) : SV_Target
            {
                float ndoit1 = dot(i.normal, i.ldir);
                ndoit1 = floor(ndoit1 * 4) / 4.0f;
                return _Color * ndoitl;
            }

            ENDCG
        }
    }
}
