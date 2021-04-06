// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:DLNK Shaders/Complex/ReliefCheap,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:1,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:33128,y:32674,varname:node_2865,prsc:2|diff-6343-OUT,spec-688-OUT,gloss-328-OUT,normal-1487-OUT,difocc-8159-OUT,spcocc-8159-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:32114,y:32712,varname:node_6343,prsc:2|A-915-OUT,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:31932,y:32822,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5019608,c2:0.5019608,c3:0.5019608,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31921,y:32620,ptovrint:True,ptlb:Albedo,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8805-OUT;n:type:ShaderForge.SFN_Tex2d,id:5964,x:32301,y:32791,ptovrint:True,ptlb:Normal Map,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-8805-OUT;n:type:ShaderForge.SFN_Slider,id:358,x:32500,y:32222,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:_Metallic,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Slider,id:1813,x:32197,y:32191,ptovrint:True,ptlb:Gloss,ptin:_Glossiness,varname:_Glossiness,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:2;n:type:ShaderForge.SFN_Multiply,id:328,x:32559,y:32531,varname:node_328,prsc:2|A-982-A,B-1813-OUT;n:type:ShaderForge.SFN_Multiply,id:688,x:32578,y:32382,varname:node_688,prsc:2|A-982-RGB,B-358-OUT;n:type:ShaderForge.SFN_Vector3,id:8143,x:32336,y:32946,varname:node_8143,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Lerp,id:7874,x:32520,y:32808,varname:node_7874,prsc:2|A-5964-RGB,B-8143-OUT,T-287-OUT;n:type:ShaderForge.SFN_ValueProperty,id:287,x:32336,y:33046,ptovrint:False,ptlb:Normal Smooth,ptin:_NormalSmooth,varname:_NormalSmooth,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_TexCoord,id:9982,x:30543,y:32288,varname:node_9982,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:7427,x:30393,y:32248,varname:node_7427,prsc:2|A-9982-UVOUT,B-6981-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6981,x:30222,y:32313,ptovrint:False,ptlb:UV Master Tiling,ptin:_UVMasterTiling,varname:_UVMasterTiling,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:982,x:32308,y:32362,ptovrint:True,ptlb:Metalness,ptin:_MetallicGlossMap,varname:_MetallicGlossMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8805-OUT;n:type:ShaderForge.SFN_Tex2d,id:6982,x:31714,y:32218,ptovrint:True,ptlb:Occlusion,ptin:_OcclusionMap,varname:_OcclusionMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8805-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6010,x:31759,y:32468,ptovrint:True,ptlb:Occlusion Mult,ptin:_OcclusionStrenght,varname:_OcclusionStrenght,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:2405,x:30012,y:32746,ptovrint:True,ptlb:Depth,ptin:Depth,varname:Depth,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Slider,id:2724,x:29855,y:32888,ptovrint:True,ptlb:Depth Map Smooth,ptin:_HgtMapSmooth,varname:_HgtMapSmooth,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5,max:5;n:type:ShaderForge.SFN_Tex2dAsset,id:1432,x:30237,y:32793,ptovrint:True,ptlb:Depth Map,ptin:_ParallaxMap,varname:_ParallaxMap,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4269,x:32724,y:33233,ptovrint:True,ptlb:Detail Albedo,ptin:_DetailAlbedoMap,varname:_DetailAlbedoMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8805-OUT;n:type:ShaderForge.SFN_Tex2d,id:1649,x:32724,y:33464,ptovrint:True,ptlb:Detail Bump,ptin:_DetailNormalMap,varname:_DetailNormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-8805-OUT;n:type:ShaderForge.SFN_Lerp,id:2921,x:32883,y:33464,varname:node_2921,prsc:2|A-1649-RGB,B-8143-OUT,T-6074-OUT;n:type:ShaderForge.SFN_ValueProperty,id:590,x:32724,y:33694,ptovrint:True,ptlb:Detail Bump Smooth,ptin:_DetailNormalMapScale,varname:_DetailNormalMapScale,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:1950,x:32580,y:32960,ptovrint:False,ptlb:Detail Mask,ptin:_DetailMask,varname:_DetailMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8805-OUT;n:type:ShaderForge.SFN_Lerp,id:1487,x:32913,y:32785,varname:node_1487,prsc:2|A-7874-OUT,B-2921-OUT,T-8121-OUT;n:type:ShaderForge.SFN_Multiply,id:9828,x:32802,y:32902,varname:node_9828,prsc:2|A-1950-R,B-2573-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2573,x:32818,y:33091,ptovrint:False,ptlb:Detail Mask Mult,ptin:_DetailMaskMult,varname:_DetailMaskMult,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Lerp,id:915,x:32138,y:32842,varname:node_915,prsc:2|A-7736-RGB,B-4269-RGB,T-8121-OUT;n:type:ShaderForge.SFN_OneMinus,id:6074,x:32836,y:33596,varname:node_6074,prsc:2|IN-590-OUT;n:type:ShaderForge.SFN_Clamp01,id:8121,x:32951,y:32930,varname:node_8121,prsc:2|IN-9828-OUT;n:type:ShaderForge.SFN_Multiply,id:1224,x:31865,y:32282,varname:node_1224,prsc:2|A-6982-R,B-6010-OUT;n:type:ShaderForge.SFN_OneMinus,id:7361,x:31910,y:32440,varname:node_7361,prsc:2|IN-6010-OUT;n:type:ShaderForge.SFN_Code,id:9060,x:30532,y:32600,varname:node_9060,prsc:2,code:dgBpAGUAdwBEAGkAcgAgAD0AIABuAG8AcgBtAGEAbABpAHoAZQAoAHYAaQBlAHcARABpAHIAKQA7AAoAZgBsAG8AYQB0ADMAIABwACAAPQAgAGYAbABvAGEAdAAzACgAVQBWACwAIAAwACkAOwAKAGYAbABvAGEAdAAzACAAbgBlAHcAVgBpAGUAdwAgAD0AIABuAG8AcgBtAGEAbABpAHoAZQAoAHYAaQBlAHcARABpAHIAIAAqACAALQAxACkAOwAKAG4AZQB3AFYAaQBlAHcALgB6ACAAPQAgAGEAYgBzACgAbgBlAHcAVgBpAGUAdwAuAHoAKQA7AAoACgBmAGwAbwBhAHQAIABkAGUAcAB0AGgAQgBpAGEAcwAgAD0AIAAxAC4AMAAgAC0AIABuAGUAdwBWAGkAZQB3AC4AegA7AAoAZABlAHAAdABoAEIAaQBhAHMAIAAqAD0AIABkAGUAcAB0AGgAQgBpAGEAcwA7AAoAZABlAHAAdABoAEIAaQBhAHMAIAAqAD0AIABkAGUAcAB0AGgAQgBpAGEAcwA7AAoAZABlAHAAdABoAEIAaQBhAHMAIAA9ACAAMQAuADAAIAAtACAAZABlAHAAdABoAEIAaQBhAHMAIAAqACAAZABlAHAAdABoAEIAaQBhAHMAOwAKAAoAbgBlAHcAVgBpAGUAdwAuAHgAeQAgACoAPQAgAGQAZQBwAHQAaABCAGkAYQBzADsACgBuAGUAdwBWAGkAZQB3AC4AeAB5ACAAKgA9ACAARABlAHAAdABoADsACgAKAGMAbwBuAHMAdAAgAGkAbgB0ACAAYgBpAG4AYQByAHkAUwBlAGEAcgBjAGgAUwB0AGUAcABzACAAPQAgADEAMAA7AAoACgBuAGUAdwBWAGkAZQB3ACAALwA9ACAAbgBlAHcAVgBpAGUAdwAuAHoAIAAqACAAbABpAG4AZQBhAHIAUwBlAGEAcgBjAGgAUwB0AGUAcABzADsACgAKAC8ALwBwAHIAbwBkAHUAYwBlAHMAIABkAGUAcAB0AGgACgBpAG4AdAAgAGkAOwAKAGYAbwByACgAIABpAD0AMAA7ACAAaQA8AGwAaQBuAGUAYQByAFMAZQBhAHIAYwBoAFMAdABlAHAAcwA7ACAAaQArACsAIAApAHsACgBmAGwAbwBhAHQAIAB0AGUAeAAgAD0AIAB0AGUAeAAyAEQAKABIAGUAaQBnAGgAdABNAGEAcAAsACAAcAAuAHgAeQApAC4AcgA7AAoAaQBmACAAKABwAC4AegA8AHQAZQB4ACkAIABwACsAPQBuAGUAdwBWAGkAZQB3ADsACgB9AAoACgBmAG8AcgAoACAAaQA9ADAAOwAgAGkAPABiAGkAbgBhAHIAeQBTAGUAYQByAGMAaABTAHQAZQBwAHMAOwAgAGkAKwArACAAKQB7AAoAbgBlAHcAVgBpAGUAdwAgACoAPQAgADAALgA1ADsACgBmAGwAbwBhAHQAIAB0AGUAeAAgAD0AIAB0AGUAeAAyAEQAKABIAGUAaQBnAGgAdABNAGEAcAAsACAAcAAuAHgAeQApAC4AcgA7AAoAaQBmACgAcAAuAHoAIAA8ACAAdABlAHgAKQAgAHAAKwA9ACAAbgBlAHcAVgBpAGUAdwA7AAoAZQBsAHMAZQAgAHAAIAAtAD0AIABuAGUAdwBWAGkAZQB3ADsACgB9AAoAcgBlAHQAdQByAG4AIABwADsA,output:2,fname:Relief,width:567,height:476,input:10,input:12,input:0,input:0,input:9,input_1_label:viewDir,input_2_label:HeightMap,input_3_label:Depht,input_4_label:linearSearchSteps,input_5_label:UV|A-7133-XYZ,B-1432-TEX,C-2405-OUT,D-3716-OUT,E-7427-OUT;n:type:ShaderForge.SFN_Transform,id:7133,x:30237,y:32563,varname:node_7133,prsc:2,tffrom:0,tfto:2|IN-6899-OUT;n:type:ShaderForge.SFN_ViewVector,id:6899,x:30061,y:32563,varname:node_6899,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:8805,x:31186,y:32648,varname:node_8805,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9060-OUT;n:type:ShaderForge.SFN_Multiply,id:3716,x:30162,y:32984,varname:node_3716,prsc:2|A-2724-OUT,B-9975-OUT;n:type:ShaderForge.SFN_Vector1,id:9975,x:30014,y:33075,varname:node_9975,prsc:2,v1:10;n:type:ShaderForge.SFN_Clamp01,id:8159,x:32099,y:32311,varname:node_8159,prsc:2|IN-8758-OUT;n:type:ShaderForge.SFN_Add,id:8758,x:31988,y:32182,varname:node_8758,prsc:2|A-7361-OUT,B-1224-OUT;proporder:6665-7736-5964-287-1432-2724-2405-358-1813-6981-982-1950-2573-4269-1649-590-6982-6010;pass:END;sub:END;*/

Shader "DLNK Shaders/Complex/ReliefSimple" {
    Properties {
        _Color ("Color", Color) = (0.5019608,0.5019608,0.5019608,1)
        _MainTex ("Albedo", 2D) = "white" {}
        _BumpMap ("Normal Map", 2D) = "bump" {}
        _NormalSmooth ("Normal Smooth", Float ) = 0
        _ParallaxMap ("Depth Map", 2D) = "white" {}
        _HgtMapSmooth ("Depth Map Smooth", Range(0, 5)) = 5
        Depth ("Depth", Float ) = 0
        _Metallic ("Metallic", Range(0, 2)) = 1
        _Glossiness ("Gloss", Range(0, 2)) = 0.8
        _UVMasterTiling ("UV Master Tiling", Float ) = 1
        _MetallicGlossMap ("Metalness", 2D) = "white" {}
        _DetailMask ("Detail Mask", 2D) = "white" {}
        _DetailMaskMult ("Detail Mask Mult", Float ) = 0
        _DetailAlbedoMap ("Detail Albedo", 2D) = "white" {}
        _DetailNormalMap ("Detail Bump", 2D) = "bump" {}
        _DetailNormalMapScale ("Detail Bump Smooth", Float ) = 1
        _OcclusionMap ("Occlusion", 2D) = "white" {}
        _OcclusionStrenght ("Occlusion Mult", Float ) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "DEFERRED"
            Tags {
                "LightMode"="Deferred"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_DEFERRED
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile ___ UNITY_HDR_ON
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers d3d11_9x xbox360 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Glossiness;
            uniform float _NormalSmooth;
            uniform float _UVMasterTiling;
            uniform sampler2D _MetallicGlossMap; uniform float4 _MetallicGlossMap_ST;
            uniform sampler2D _OcclusionMap; uniform float4 _OcclusionMap_ST;
            uniform float _OcclusionStrenght;
            uniform float Depth;
            uniform float _HgtMapSmooth;
            uniform sampler2D _ParallaxMap; uniform float4 _ParallaxMap_ST;
            uniform sampler2D _DetailAlbedoMap; uniform float4 _DetailAlbedoMap_ST;
            uniform sampler2D _DetailNormalMap; uniform float4 _DetailNormalMap_ST;
            uniform float _DetailNormalMapScale;
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform float _DetailMaskMult;
            float3 Relief( fixed3 viewDir , sampler2D HeightMap , float Depht , float linearSearchSteps , fixed2 UV ){
            viewDir = normalize(viewDir);
            float3 p = float3(UV, 0);
            float3 newView = normalize(viewDir * -1);
            newView.z = abs(newView.z);
            
            float depthBias = 1.0 - newView.z;
            depthBias *= depthBias;
            depthBias *= depthBias;
            depthBias = 1.0 - depthBias * depthBias;
            
            newView.xy *= depthBias;
            newView.xy *= Depth;
            
            const int binarySearchSteps = 10;
            
            newView /= newView.z * linearSearchSteps;
            
            //produces depth
            int i;
            for( i=0; i<linearSearchSteps; i++ ){
            float tex = tex2D(HeightMap, p.xy).r;
            if (p.z<tex) p+=newView;
            }
            
            for( i=0; i<binarySearchSteps; i++ ){
            newView *= 0.5;
            float tex = tex2D(HeightMap, p.xy).r;
            if(p.z < tex) p+= newView;
            else p -= newView;
            }
            return p;
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD7;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            void frag(
                VertexOutput i,
                out half4 outDiffuse : SV_Target0,
                out half4 outSpecSmoothness : SV_Target1,
                out half4 outNormal : SV_Target2,
                out half4 outEmission : SV_Target3 )
            {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_8805 = Relief( mul( tangentTransform, viewDirection ).xyz.rgb , _ParallaxMap , Depth , (_HgtMapSmooth*10.0) , (i.uv0*_UVMasterTiling) ).rg;
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_8805, _BumpMap)));
                float3 node_8143 = float3(0,0,1);
                float3 _DetailNormalMap_var = UnpackNormal(tex2D(_DetailNormalMap,TRANSFORM_TEX(node_8805, _DetailNormalMap)));
                float4 _DetailMask_var = tex2D(_DetailMask,TRANSFORM_TEX(node_8805, _DetailMask));
                float node_8121 = saturate((_DetailMask_var.r*_DetailMaskMult));
                float3 normalLocal = lerp(lerp(_BumpMap_var.rgb,node_8143,_NormalSmooth),lerp(_DetailNormalMap_var.rgb,node_8143,(1.0 - _DetailNormalMapScale)),node_8121);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _MetallicGlossMap_var = tex2D(_MetallicGlossMap,TRANSFORM_TEX(node_8805, _MetallicGlossMap));
                float gloss = (_MetallicGlossMap_var.a*_Glossiness);
/////// GI Data:
                UnityLight light; // Dummy light
                light.color = 0;
                light.dir = half3(0,1,0);
                light.ndotl = max(0,dot(normalDirection,light.dir));
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = 1;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
////// Specular:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_8805, _MainTex));
                float4 _DetailAlbedoMap_var = tex2D(_DetailAlbedoMap,TRANSFORM_TEX(node_8805, _DetailAlbedoMap));
                float3 diffuseColor = (lerp(_MainTex_var.rgb,_DetailAlbedoMap_var.rgb,node_8121)*_Color.rgb); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, (_MetallicGlossMap_var.rgb*_Metallic).r, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
/////// Diffuse:
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float4 _OcclusionMap_var = tex2D(_OcclusionMap,TRANSFORM_TEX(node_8805, _OcclusionMap));
                float node_8159 = saturate(((1.0 - _OcclusionStrenght)+(_OcclusionMap_var.r*_OcclusionStrenght)));
                indirectDiffuse *= node_8159; // Diffuse AO
/// Final Color:
                outDiffuse = half4( diffuseColor, node_8159 );
                outSpecSmoothness = half4( specularColor, gloss );
                outNormal = half4( normalDirection * 0.5 + 0.5, 1 );
                outEmission = half4(0,0,0,1);
                outEmission.rgb += indirectSpecular * node_8159;
                outEmission.rgb += indirectDiffuse * diffuseColor;
                #ifndef UNITY_HDR_ON
                    outEmission.rgb = exp2(-outEmission.rgb);
                #endif
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers d3d11_9x xbox360 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Glossiness;
            uniform float _NormalSmooth;
            uniform float _UVMasterTiling;
            uniform sampler2D _MetallicGlossMap; uniform float4 _MetallicGlossMap_ST;
            uniform sampler2D _OcclusionMap; uniform float4 _OcclusionMap_ST;
            uniform float _OcclusionStrenght;
            uniform float Depth;
            uniform float _HgtMapSmooth;
            uniform sampler2D _ParallaxMap; uniform float4 _ParallaxMap_ST;
            uniform sampler2D _DetailAlbedoMap; uniform float4 _DetailAlbedoMap_ST;
            uniform sampler2D _DetailNormalMap; uniform float4 _DetailNormalMap_ST;
            uniform float _DetailNormalMapScale;
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform float _DetailMaskMult;
            float3 Relief( fixed3 viewDir , sampler2D HeightMap , float Depht , float linearSearchSteps , fixed2 UV ){
            viewDir = normalize(viewDir);
            float3 p = float3(UV, 0);
            float3 newView = normalize(viewDir * -1);
            newView.z = abs(newView.z);
            
            float depthBias = 1.0 - newView.z;
            depthBias *= depthBias;
            depthBias *= depthBias;
            depthBias = 1.0 - depthBias * depthBias;
            
            newView.xy *= depthBias;
            newView.xy *= Depth;
            
            const int binarySearchSteps = 10;
            
            newView /= newView.z * linearSearchSteps;
            
            //produces depth
            int i;
            for( i=0; i<linearSearchSteps; i++ ){
            float tex = tex2D(HeightMap, p.xy).r;
            if (p.z<tex) p+=newView;
            }
            
            for( i=0; i<binarySearchSteps; i++ ){
            newView *= 0.5;
            float tex = tex2D(HeightMap, p.xy).r;
            if(p.z < tex) p+= newView;
            else p -= newView;
            }
            return p;
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_8805 = Relief( mul( tangentTransform, viewDirection ).xyz.rgb , _ParallaxMap , Depth , (_HgtMapSmooth*10.0) , (i.uv0*_UVMasterTiling) ).rg;
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_8805, _BumpMap)));
                float3 node_8143 = float3(0,0,1);
                float3 _DetailNormalMap_var = UnpackNormal(tex2D(_DetailNormalMap,TRANSFORM_TEX(node_8805, _DetailNormalMap)));
                float4 _DetailMask_var = tex2D(_DetailMask,TRANSFORM_TEX(node_8805, _DetailMask));
                float node_8121 = saturate((_DetailMask_var.r*_DetailMaskMult));
                float3 normalLocal = lerp(lerp(_BumpMap_var.rgb,node_8143,_NormalSmooth),lerp(_DetailNormalMap_var.rgb,node_8143,(1.0 - _DetailNormalMapScale)),node_8121);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _MetallicGlossMap_var = tex2D(_MetallicGlossMap,TRANSFORM_TEX(node_8805, _MetallicGlossMap));
                float gloss = (_MetallicGlossMap_var.a*_Glossiness);
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _OcclusionMap_var = tex2D(_OcclusionMap,TRANSFORM_TEX(node_8805, _OcclusionMap));
                float node_8159 = saturate(((1.0 - _OcclusionStrenght)+(_OcclusionMap_var.r*_OcclusionStrenght)));
                float3 specularAO = node_8159;
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_8805, _MainTex));
                float4 _DetailAlbedoMap_var = tex2D(_DetailAlbedoMap,TRANSFORM_TEX(node_8805, _DetailAlbedoMap));
                float3 diffuseColor = (lerp(_MainTex_var.rgb,_DetailAlbedoMap_var.rgb,node_8121)*_Color.rgb); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, (_MetallicGlossMap_var.rgb*_Metallic).r, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular) * specularAO;
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                indirectDiffuse *= node_8159; // Diffuse AO
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers d3d11_9x xbox360 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Glossiness;
            uniform float _NormalSmooth;
            uniform float _UVMasterTiling;
            uniform sampler2D _MetallicGlossMap; uniform float4 _MetallicGlossMap_ST;
            uniform float Depth;
            uniform float _HgtMapSmooth;
            uniform sampler2D _ParallaxMap; uniform float4 _ParallaxMap_ST;
            uniform sampler2D _DetailAlbedoMap; uniform float4 _DetailAlbedoMap_ST;
            uniform sampler2D _DetailNormalMap; uniform float4 _DetailNormalMap_ST;
            uniform float _DetailNormalMapScale;
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform float _DetailMaskMult;
            float3 Relief( fixed3 viewDir , sampler2D HeightMap , float Depht , float linearSearchSteps , fixed2 UV ){
            viewDir = normalize(viewDir);
            float3 p = float3(UV, 0);
            float3 newView = normalize(viewDir * -1);
            newView.z = abs(newView.z);
            
            float depthBias = 1.0 - newView.z;
            depthBias *= depthBias;
            depthBias *= depthBias;
            depthBias = 1.0 - depthBias * depthBias;
            
            newView.xy *= depthBias;
            newView.xy *= Depth;
            
            const int binarySearchSteps = 10;
            
            newView /= newView.z * linearSearchSteps;
            
            //produces depth
            int i;
            for( i=0; i<linearSearchSteps; i++ ){
            float tex = tex2D(HeightMap, p.xy).r;
            if (p.z<tex) p+=newView;
            }
            
            for( i=0; i<binarySearchSteps; i++ ){
            newView *= 0.5;
            float tex = tex2D(HeightMap, p.xy).r;
            if(p.z < tex) p+= newView;
            else p -= newView;
            }
            return p;
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_8805 = Relief( mul( tangentTransform, viewDirection ).xyz.rgb , _ParallaxMap , Depth , (_HgtMapSmooth*10.0) , (i.uv0*_UVMasterTiling) ).rg;
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_8805, _BumpMap)));
                float3 node_8143 = float3(0,0,1);
                float3 _DetailNormalMap_var = UnpackNormal(tex2D(_DetailNormalMap,TRANSFORM_TEX(node_8805, _DetailNormalMap)));
                float4 _DetailMask_var = tex2D(_DetailMask,TRANSFORM_TEX(node_8805, _DetailMask));
                float node_8121 = saturate((_DetailMask_var.r*_DetailMaskMult));
                float3 normalLocal = lerp(lerp(_BumpMap_var.rgb,node_8143,_NormalSmooth),lerp(_DetailNormalMap_var.rgb,node_8143,(1.0 - _DetailNormalMapScale)),node_8121);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _MetallicGlossMap_var = tex2D(_MetallicGlossMap,TRANSFORM_TEX(node_8805, _MetallicGlossMap));
                float gloss = (_MetallicGlossMap_var.a*_Glossiness);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_8805, _MainTex));
                float4 _DetailAlbedoMap_var = tex2D(_DetailAlbedoMap,TRANSFORM_TEX(node_8805, _DetailAlbedoMap));
                float3 diffuseColor = (lerp(_MainTex_var.rgb,_DetailAlbedoMap_var.rgb,node_8121)*_Color.rgb); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, (_MetallicGlossMap_var.rgb*_Metallic).r, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers d3d11_9x xbox360 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metallic;
            uniform float _Glossiness;
            uniform float _UVMasterTiling;
            uniform sampler2D _MetallicGlossMap; uniform float4 _MetallicGlossMap_ST;
            uniform float Depth;
            uniform float _HgtMapSmooth;
            uniform sampler2D _ParallaxMap; uniform float4 _ParallaxMap_ST;
            uniform sampler2D _DetailAlbedoMap; uniform float4 _DetailAlbedoMap_ST;
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform float _DetailMaskMult;
            float3 Relief( fixed3 viewDir , sampler2D HeightMap , float Depht , float linearSearchSteps , fixed2 UV ){
            viewDir = normalize(viewDir);
            float3 p = float3(UV, 0);
            float3 newView = normalize(viewDir * -1);
            newView.z = abs(newView.z);
            
            float depthBias = 1.0 - newView.z;
            depthBias *= depthBias;
            depthBias *= depthBias;
            depthBias = 1.0 - depthBias * depthBias;
            
            newView.xy *= depthBias;
            newView.xy *= Depth;
            
            const int binarySearchSteps = 10;
            
            newView /= newView.z * linearSearchSteps;
            
            //produces depth
            int i;
            for( i=0; i<linearSearchSteps; i++ ){
            float tex = tex2D(HeightMap, p.xy).r;
            if (p.z<tex) p+=newView;
            }
            
            for( i=0; i<binarySearchSteps; i++ ){
            newView *= 0.5;
            float tex = tex2D(HeightMap, p.xy).r;
            if(p.z < tex) p+= newView;
            else p -= newView;
            }
            return p;
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float2 node_8805 = Relief( mul( tangentTransform, viewDirection ).xyz.rgb , _ParallaxMap , Depth , (_HgtMapSmooth*10.0) , (i.uv0*_UVMasterTiling) ).rg;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_8805, _MainTex));
                float4 _DetailAlbedoMap_var = tex2D(_DetailAlbedoMap,TRANSFORM_TEX(node_8805, _DetailAlbedoMap));
                float4 _DetailMask_var = tex2D(_DetailMask,TRANSFORM_TEX(node_8805, _DetailMask));
                float node_8121 = saturate((_DetailMask_var.r*_DetailMaskMult));
                float3 diffColor = (lerp(_MainTex_var.rgb,_DetailAlbedoMap_var.rgb,node_8121)*_Color.rgb);
                float specularMonochrome;
                float3 specColor;
                float4 _MetallicGlossMap_var = tex2D(_MetallicGlossMap,TRANSFORM_TEX(node_8805, _MetallicGlossMap));
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, (_MetallicGlossMap_var.rgb*_Metallic).r, specColor, specularMonochrome );
                float roughness = 1.0 - (_MetallicGlossMap_var.a*_Glossiness);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "DLNK Shaders/Complex/ReliefCheap"
    CustomEditor "ShaderForgeMaterialInspector"
}
