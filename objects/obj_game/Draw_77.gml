/// @description Insert description here
// You can write your code in this editor

//Handles the drawing of the application surface and the desaturation shader
var as_pos = application_get_position();
var as_x = as_pos[0];
var as_y = as_pos[1];

if(room != rm_mainmenu){
	shader_set(shader);
	shader_set_uniform_f(u_strength, desat_strength);
}

draw_surface(application_surface, as_x, as_y);

shader_reset();