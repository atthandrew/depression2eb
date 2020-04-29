// Inherit the parent event
event_inherited();

if(myTextbox != noone){
	if(myTextbox.page == 0 && !is_warning){
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			if(obj_game.energy > 0)
			{
				obj_game.energy--;
				obj_game.mHealth--;
				obj_game.pHealth++;
				obj_game.sHealth++;
				audio_play_sound(snd_outdoor_park, 100, false);
			
				myText[1] = "You go for a nice walk and get some fresh air.";
				myTextbox.greenText[1] = "S+ P+ ";
				myTextbox.redText[1] = "E- M-";
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
			else
			{
				myText[1] = "You don't have enough energy for this activity";
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
		}
	
		if(keyboard_check_pressed(ord("2")))
		{
			myText[1] = "You decide the park looks too busy and decide to go somewhere else.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}

if(!instance_exists(obj_textbox) && audio_is_playing(snd_outdoor_park))
{
	audio_sound_gain(snd_outdoor_park, 0, 250);
}

if(audio_sound_get_gain(snd_outdoor_park) == 0)
{
	audio_stop_sound(snd_outdoor_park);
	audio_sound_gain(snd_outdoor_park, 1, 0);
}