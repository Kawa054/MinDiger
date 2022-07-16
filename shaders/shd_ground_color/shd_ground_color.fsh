//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float ground_color_r;
uniform float ground_color_g;
uniform float ground_color_b;

void main()
{
	vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
	gl_FragColor = vec4(ground_color_r, ground_color_g, ground_color_b, texColor.a);
}
