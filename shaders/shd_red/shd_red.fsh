varying vec2 v_vTexcoord;
varying vec4 v_vColour;
void main()
{
    gl_FragColor = vec4(v_vColour.rgb, texture2D( gm_BaseTexture, v_vTexcoord ).a);
	gl_FragColor.r = 255.0;
	gl_FragColor.g = 0.0;
	gl_FragColor.b = 0.0;
}
