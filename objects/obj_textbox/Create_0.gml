/// @description Insert description here
// You can write your code in this editor
text = "HelloWorld!"
page = 0;
creator = noone;
name = noone;

xBuffer = 10;
yBuffer = 10;

boxWidth = sprite_get_width(spr_textbox) - (2 * xBuffer);
stringHeight = string_height(text);

boxX = 0;
boxY = window_get_height() - 256;