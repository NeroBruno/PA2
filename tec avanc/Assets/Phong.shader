Shader "My/Phong"
{
    Properties
    {
        _Color("Color",color) = (1,1,1,1)
    }
    SubShader
    { 
 
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
                float3 ldir : TEXCOORD1;
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
                float ndotl = dot(i.normal, i.ldir);
                ndotl = floor(ndotl * 4) / 4.0f;
                ndotl = max(0.2f, ndotl);
                return _Color * i.ndotl;
            }

            ENDCG
        }
    }
}
