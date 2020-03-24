/// @description Insert description here
// You can write your code in this editor
draw_set_font(ft_textbox);
draw_set_color(c_white);

draw_text(20, 20, "day = " + string(day));
draw_text(20, 40, "progress = " + string(progress));

if(instance_exists(obj_player)){
	draw_text(20, 60, "energy = " + string(energy));
	draw_text(20, 80, "stats(m,p,s) = (" + string(mHealth) + "," + 
		string(pHealth) + "," + string(sHealth) + ")");
}