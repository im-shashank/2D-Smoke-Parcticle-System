shader_type canvas_item;

uniform sampler2D smokeTexture;
uniform vec4 smokeColor : source_color;
uniform sampler2D smokeColorGradient;

void fragment() {
	vec4 color = texture(smokeTexture, UV);
	vec4 smokeGradient = texture(smokeColorGradient, UV);
	COLOR = color * smokeColor * smokeGradient;
}
