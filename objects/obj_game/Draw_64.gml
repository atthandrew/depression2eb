/// @description Insert description here
// You can write your code in this editor
draw_set_font(ft_textbox);
draw_set_color(c_white);
var day_string = "Day " + string(day); 
var progress_string = "Progress " + string(progress);
var energy_string = "Energy ";
var mental_string = "Mental ";
var phys_string = "Physical ";
var social_string = "Social ";
var bar_offset = 20;


if(room == rm_house || room == rm_map){
	//Draw text-based UI
	draw_text(display_get_gui_width() - string_width(day_string) - 20, 20, day_string);
	draw_text(display_get_gui_width() - string_width(progress_string) - 20, 40, progress_string);
	draw_text(20, 20, energy_string);
	draw_text(20, 40, mental_string);
	draw_text(20, 60, phys_string);
	draw_text(20, 80, social_string);
	
	
	//Draw the energy and health bars
	if(energy >= 3)
		draw_set_color(c_lime);
	else if(energy == 2)
		draw_set_color(c_yellow);
	else
		draw_set_color(c_red);
	bar_offset = string_width(phys_string) + bar_spacing * 2;
	for(var i = 0; i < energy; i++){
		draw_line_width(bar_offset, 20 + 2, bar_offset, 20 + string_height(energy_string) - 2, bar_width);
		bar_offset += bar_spacing;
	}
	
	if(mHealth >= 5)
		draw_set_color(c_lime);
	else if(mHealth >= 3 && mHealth < 5)
		draw_set_color(c_yellow);
	else
		draw_set_color(c_red);
	bar_offset = string_width(phys_string) + bar_spacing * 2;
	for(var i = 0; i < mHealth; i++){
		draw_line_width(bar_offset, 40 + 2, bar_offset, 40 + string_height(energy_string) - 2, bar_width);
		bar_offset += bar_spacing;
	}
	
	if(pHealth >= 5)
		draw_set_color(c_lime);
	else if(pHealth >= 3 && pHealth < 5)
		draw_set_color(c_yellow);
	else
		draw_set_color(c_red);
	bar_offset = string_width(phys_string) + bar_spacing * 2;
	for(var i = 0; i < pHealth; i++){
		draw_line_width(bar_offset, 60 + 2, bar_offset, 60 + string_height(energy_string) - 2, bar_width);
		bar_offset += bar_spacing;
	}
	
	if(sHealth >= 5)
		draw_set_color(c_lime);
	else if(sHealth >= 3 && sHealth < 5)
		draw_set_color(c_yellow);
	else
		draw_set_color(c_red);
	bar_offset = string_width(phys_string) + bar_spacing * 2;
	for(var i = 0; i < sHealth; i++){
		draw_line_width(bar_offset, 80 + 2, bar_offset, 80 + string_height(energy_string) - 2, bar_width);
		bar_offset += bar_spacing;
	}
}