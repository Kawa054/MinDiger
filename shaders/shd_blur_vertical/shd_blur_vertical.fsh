//
// ブラー効果を行うシェーダー(ガウスぼかしは縦横方向で分離可能)
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec2  resolution; //解像度
uniform float blur_amount; //ブラーの強度(0.0 ~ 1.0)

void main()
{
    // 解像度とぼかしの強さからぼかしのサイズを決める
    float blurSize = 1.0/resolution.y * blur_amount;

    //縦方向に対してフィルタを行う
    vec4 sum = vec4(0.0);
    sum += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y - 4.0*blurSize)) * 0.05;
    sum += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y - 3.0*blurSize)) * 0.09;
    sum += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y - 2.0*blurSize)) * 0.12;
    sum += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y - blurSize)) * 0.15;
    sum += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y)) * 0.16;
    sum += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y + blurSize)) * 0.15;
    sum += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y + 2.0*blurSize)) * 0.12;
    sum += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y + 3.0*blurSize)) * 0.09;
    sum += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y + 4.0*blurSize)) * 0.05;
    gl_FragColor = sum;
}
