/// @description Insert description here
// You can write your code in this editor
draw_set_font(ft_textbox);
draw_set_color(c_white);

if(paused){
	draw_text(20, 20, "day = " + string(day));
	draw_text(20, 40, "progress = " + string(progress));
	draw_text(20, 60, "energy = " + string(energy));
	draw_text(20, 80, "Mental Health = " + string(mHealth));
	draw_text(20, 100, "Physical Health = " + string(pHealth));
	draw_text(20, 120, "Social Health = " + string(sHealth));
}