/// @description Insert description here
// You can write your code in this editor

//Returning to main menu from options menu

with(obj_button){
	instance_destroy();	
}

//Main menu buttons
var buttonPlay = instance_create_depth(room_width/2, room_height/2, -4096, obj_button);
buttonPlay.BUTTON_TYPE = 1;
buttonPlay.hoverValue = 1;

var buttonOptions = instance_create_depth(room_width/2, room_height/2 + 60, -4096, obj_button);
buttonOptions.BUTTON_TYPE = 2;
buttonOptions.hoverValue = 2;

var buttonQuit = instance_create_depth(room_width/2, room_height/2 + 120, -4096, obj_button);
buttonQuit.BUTTON_TYPE = 3;
buttonQuit.hoverValue = 3;