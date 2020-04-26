/// @description Insert description here
// You can write your code in this editor
text = "HelloWorld!"
greenText = "";
redText = "";
page = 0;
creator = noone;
name = noone;

xBuffer = 15;
yBuffer = 15;

boxWidth = sprite_get_width(spr_textbox) - (2 * xBuffer);
stringHeight = string_height(text);

boxX = (display_get_gui_width() - sprite_get_width(spr_textbox)) / 2;
boxY = display_get_gui_height() - sprite_get_height(spr_textbox) - yBuffer;
box_alpha = 1;

obj_game.paused = true;

charCount = 0;