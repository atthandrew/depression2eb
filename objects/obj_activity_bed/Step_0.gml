// Inherit the parent event
event_inherited();

if(myTextbox != noone){
	if(myTextbox.page == 0 && !is_warning){
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			audio_play_sound(snd_activity_bed, 100, false);
			obj_fade.fadein = false;
			obj_fade.fadeout = true;
			//obj_game.bed = true; <- Done in obj_fade
		}
	
		if(keyboard_check_pressed(ord("2")))
		{
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}