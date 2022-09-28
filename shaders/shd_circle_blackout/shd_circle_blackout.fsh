//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float radius;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	vec2 v1 = vec2(960.0, 540.0);
	vec2 v2 = vec2(v_vTexcoord.x*1920.0, v_vTexcoord.y*1080.0);
	float d = distance(v1, v2);
	
	if(d > radius){
		 gl_FragColor = vec4(255.0, 255.0, 255.0, 1.0);
	}
	
}
