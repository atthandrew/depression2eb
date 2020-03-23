/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_textbox, 0, boxX, boxY);

draw_set_font(ft_textbox);

//draw textbox name in center of textbox
draw_set_halign(fa_center);
draw_text(boxX + boxWidth/2, boxY + yBuffer, name);
draw_set_halign(fa_left);

//draw textbox text
draw_text_ext(boxX + xBuffer, boxY + stringHeight + yBuffer, text[page], stringHeight, boxWidth);