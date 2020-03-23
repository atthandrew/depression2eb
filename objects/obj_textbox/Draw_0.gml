/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_textbox, 0, boxX, boxY);

draw_set_font(ft_textbox);
draw_text_ext(boxX, boxY, text[page], stringHeight, boxWidth);