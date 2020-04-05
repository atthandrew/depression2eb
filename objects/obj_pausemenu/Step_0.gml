/// @description Insert description here
// You can write your code in this editor

input_pause = (keyboard_check_pressed(ord("P")) || keyboard_check_pressed(vk_escape));

if(input_pause){
	if(obj_game.paused = false){
		obj_game.paused = true;	
		event_user(3);
	}
	else{
		obj_game.paused = false;
		event_user(2);
	}
}