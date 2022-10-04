//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float GROUND_COLOR_R;
uniform float GROUND_COLOR_G;
uniform float GROUND_COLOR_B;

uniform float NOISE_COLOR_R1;
uniform float NOISE_COLOR_G1;
uniform float NOISE_COLOR_B1;
uniform float NOISE_COLOR_R2;
uniform float NOISE_COLOR_G2;
uniform float NOISE_COLOR_B2;

uniform vec2 ppos;

//Typical pseudo-random hash (white noise).
float hash(vec2 p)
{
    p = mod(p, 7.31); //Bring 'p' to a useful range.
    //Generate a pseudo random number from 'p'.
    return fract(sin(p.x*12.9898 + p.y*78.233) * 43758.5453);
}

//Standard value noise.
float value_noise(vec2 pos)
{
    vec2 cell = floor(pos); //Cell (whole number) coordinates.
    vec2 sub = pos-cell; //Sub-cell (fractional) coordinates.
    sub *= sub*(3.-2.*sub); //Cubic interpolation (comment out for linear interpolation).
    const vec2 off = vec2(0,1); //Offset vector.

    //Sample cell corners and interpolate between them.
    return mix( mix(hash(cell+off.xx), hash(cell+off.yx), sub.x),
                mix(hash(cell+off.xy), hash(cell+off.yy), sub.x), sub.y);
}

//Generate 'fractal' noise from multiple value noise octaves.
float fractal_noise(vec2 pos, int oct, float amp)
{
    float noise_sum = 0.; //Noise total.
    float weight_sum = 0.; //Weight total.
    float weight = 1.; //Octave weight.

    for(int i = 0; i < oct; i++) //Iterate through octaves
    {
        noise_sum += value_noise(pos) * weight; //Add noise octave.
        weight_sum += weight; //Add octave weight.
        weight *= amp; //Reduce octave amplitude by multiplier.
        pos *= mat2(1.6,1.2,-1.2,1.6); //Rotate and scale.
    }
    return noise_sum/weight_sum; //Compute average.
}

void main()
{
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	//ベースのピクセルデータの取得
	vec2 vect = vec2(v_vTexcoord.x + ppos.x/1824.0, v_vTexcoord.y + ppos.y/1026.0);
	vec2 v = vec2(v_vTexcoord.x-200.0, v_vTexcoord.y-200.0);
	gl_FragColor = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	if(gl_FragColor.r*255.0 >= GROUND_COLOR_R - 0.0 && gl_FragColor.r*255.0 <= GROUND_COLOR_R + 0.0 && 
		gl_FragColor.g*255.0 >= GROUND_COLOR_G - 0.0 && gl_FragColor.g*255.0 <= GROUND_COLOR_G + 0.0 && 
		gl_FragColor.b*255.0 >= GROUND_COLOR_B - 0.0 && gl_FragColor.b*255.0 <= GROUND_COLOR_B + 0.0){
		float noise1 = fractal_noise(vect*15.0, 5, 0.5);
		float noise2 = fractal_noise((vect - vec2(200, 200))*15.0, 5, 0.5);
		if(noise1 <= 0.50){
			gl_FragColor = vec4(NOISE_COLOR_R1, NOISE_COLOR_G1, NOISE_COLOR_B1, 1.0);
		}
		if(noise2 <= 0.32){
			gl_FragColor = vec4(NOISE_COLOR_R2, NOISE_COLOR_G2, NOISE_COLOR_B2, 1.0);
		}
	}
}
