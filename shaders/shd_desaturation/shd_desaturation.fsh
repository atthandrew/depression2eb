//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float strength;

void main()
{
    vec4 base_col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	//EXAMPLE - find the grey value (value), then bring the base_col closer to the gray value based on strength
	//float value = (base_col.r + base_col.g + base_col.b) / 3.0;
	//vec3 out_col = base_col.rgb * (1.0 - strength) + value * strength;
	
	//Streamlined version of above, accounts for perception of colors (NTSC conversion)
	float value = dot(base_col.rgb, vec3(0.299, 0.587, 0.114));
	vec3 out_col = mix(base_col.rgb, vec3(value), strength);
	
	gl_FragColor = vec4(out_col, base_col.a);
}
