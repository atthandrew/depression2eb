/// @description Insert description here
// You can write your code in this editor

//Create pause menu when P is pressed.
var buttonPlay = instance_create_depth(room_width/2, room_height/2, -4096, obj_button);
buttonPlay.BUTTON_TYPE = 5;
buttonPlay.hoverValue = 5;

var buttonQuit = instance_create_depth(room_width/2, room_height/2 + 60, -4096, obj_button);
buttonQuit.BUTTON_TYPE = 6;
buttonQuit.hoverValue = 6;