shader_type canvas_item;

uniform vec4 colour : source_color = vec4(1.0, 1.0, 1.0, 1.0);
uniform vec2 scrollDireciton = vec2(1.0, 0.0);
uniform vec2 res = vec2(16.0, 32.0);

void fragment() {
	
	vec2 pixelate = floor(UV * res) / res;
	vec2 scroll_uv = pixelate + (TIME * scrollDireciton);
	COLOR = texture(TEXTURE, scroll_uv) * colour;
}

