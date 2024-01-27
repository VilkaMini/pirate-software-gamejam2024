//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float grayscaleModifier;

void main()
{
    // Get the color of the current pixel
    vec4 color = texture2D(gm_BaseTexture, v_vTexcoord);
    
    // Compute grayscale value by averaging RGB components
    float gray = (color.r + color.g + color.b) / 3.0;
    
	// Interpolate between original color and grayscale based on strength
    vec4 finalColor = mix(color, vec4(gray, gray, gray, color.a), grayscaleModifier);
	
    // Set the color to grayscale
    gl_FragColor = finalColor * v_vColour;
	
	//gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}
