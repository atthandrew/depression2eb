/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_textbox, 0, boxX, boxY);
draw_set_color(c_white);
draw_set_font(ft_textbox);

//draw textbox name in center of textbox
draw_set_halign(fa_center);
draw_text(boxX + boxWidth/2, boxY + yBuffer, name);
draw_set_halign(fa_left);

//draw green and red text in top left of box
//if the array contains something, and current page isn't the default "0" for uninitialized arrays
if(page < array_length_1d(greenText) && greenText[page] != "0"){ 
	draw_set_color(c_lime);
	draw_text(boxX + xBuffer, boxY + yBuffer, greenText[page]);
}
if(page < array_length_1d(redText) && redText[page] != "0"){
	draw_set_color(c_red);
	draw_text(boxX + xBuffer + string_width(greenText[page]), boxY + yBuffer, redText[page]);
}
draw_set_color(c_white);

//draw textbox text
if(charCount < string_length(text[page])){
	charCount += 0.75;
}
textPart = string_copy(text[page], 1, charCount);
draw_text_ext(boxX + xBuffer, boxY + 1.5*stringHeight + yBuffer, textPart, stringHeight, boxWidth);