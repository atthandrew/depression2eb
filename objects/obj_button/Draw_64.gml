/// @description Insert description here
// You can write your code in this editor

//Draw button box
draw_set_color(hoverColor);
//draw_rectangle(x-width, y-height, x+width, y+height, false);
draw_rectangle(buttonX-width, buttonY-height, buttonX+width, buttonY+height, false);

//Draw text
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(ft_button);
//draw_text(x, y, buttonText);
draw_text(buttonX, buttonY, buttonText);

draw_set_color(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);