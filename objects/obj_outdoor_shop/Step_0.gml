event_inherited();

if(myTextbox != noone){
	if(myTextbox.page == 0 && !is_warning){
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			if (obj_game.energy > 0)
			{
				obj_game.energy--;
				obj_game.mHealth--;
				obj_game.pHealth++;
				obj_game.sHealth++;
				audio_play_sound(snd_outdoor_shop, 100, false);

				myText[1] = "You found a couple good items.";
				myTextbox.greenText[1] = "P+ S+ ";
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
			if(obj_game.energy > 1)
			{
				obj_game.energy = obj_game.energy - 2;
				obj_game.mHealth--;
				obj_game.pHealth++;
				obj_game.sHealth = obj_game.sHealth + 2;
				audio_play_sound(snd_outdoor_shop, 100, false);
			
				myText[1] = "You and your friends window shopped with some drinks.";
				myTextbox.greenText[1] = "P+ S++ ";
				myTextbox.redText[1] = "E-- M-";
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
			else
			{
				myText[1] = "You don't have enough energy for this activity.";
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
		}
	
		if(keyboard_check_pressed(ord("3")))
		{
			myText[1] = "Maybe you should try saving some cash.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}

if(!instance_exists(obj_textbox) && audio_is_playing(snd_outdoor_shop))
{
	audio_sound_gain(snd_outdoor_shop, 0, 250);
}

if(audio_sound_get_gain(snd_outdoor_shop) == 0)
{
	audio_stop_sound(snd_outdoor_shop);
	audio_sound_gain(snd_outdoor_shop, 1, 0);
}