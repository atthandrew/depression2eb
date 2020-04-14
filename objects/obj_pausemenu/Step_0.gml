/// @description Insert description here
// You can write your code in this editor

input_pause = (keyboard_check_pressed(ord("P")) || keyboard_check_pressed(vk_escape));

if(input_pause){
	if(obj_game.paused = false){
		audio_play_sound(snd_pause, 100, false);
		obj_game.paused = true;	
		event_user(3);
	}
	else{
		audio_play_sound(snd_accept, 100, false);
		obj_game.paused = false;
		event_user(2);
	}
}