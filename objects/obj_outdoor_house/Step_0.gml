// Inherit the parent event
event_inherited();

if(myTextbox != noone){
	if(myTextbox.page == 0 && !is_warning){
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			myText[1] = "Maybe you'll head back inside.";
			audio_play_sound(snd_outdoor_home, 100, false);
			stay_on_map = false;
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	
		if(keyboard_check_pressed(ord("2")))
		{
			myText[1] = "Maybe you'll stay out a little longer.";
			stay_on_map = true;
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}