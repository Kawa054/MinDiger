//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float noise_color_r;
uniform float noise_color_g;
uniform float noise_color_b;

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
	
	//rm_game_managerで使用
	
	float noise = fractal_noise(v_vTexcoord*30.0, 5, 0.5);
	gl_FragColor = vec4(noise_color_r*noise, noise_color_g*noise, noise_color_b*noise, 0.32);
}
