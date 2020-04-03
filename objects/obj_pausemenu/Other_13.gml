/// @description Insert description here
// You can write your code in this editor

//Create pause menu when P is pressed.
var buttonPlay = instance_create_depth(obj_player.x, obj_player.y, -4096, obj_button);
buttonPlay.BUTTON_TYPE = 5;
buttonPlay.hoverValue = 5;
buttonPlay.buttonX = display_get_gui_width()/2;
buttonPlay.buttonY = display_get_gui_height()/2;
buttonPlay.offset = 0;

var buttonQuit = instance_create_depth(obj_player.x, obj_player.y, -4096, obj_button);
buttonQuit.BUTTON_TYPE = 6;
buttonQuit.hoverValue = 6;
buttonQuit.buttonX = display_get_gui_width()/2;
buttonQuit.buttonY = display_get_gui_height()/2 + 60;
buttonQuit.offset = 60;