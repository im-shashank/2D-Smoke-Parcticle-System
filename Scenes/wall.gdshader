shader_type canvas_item;

uniform vec4 wallColor : source_color;

void fragment() {
	COLOR = wallColor;
}
