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
			
				if (arcadeQuality == 5)
				{
					arcadeBonus = true;
					myText[1] = "You discovered a new favorite game! (M+)";
					myTextbox.greenText[1] = "P+ S+ ";
					myTextbox.redText[1] = "E-";
					obj_game.mHealth++;
					arcadeQuality = 0;
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
				}
				else
				{
					myText[1] = "You shot the invaders and jumped the men.";
					myTextbox.greenText[1] = "P+ S+ ";
					myTextbox.redText[1] = "E- M-";
					arcadeQuality = 0;
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
				}
				if(arcadeBonus)
				{
					audio_play_sound(snd_stat_up, 100, false);
				}
				else
				{
					audio_play_sound(snd_outdoor_arcade, 100, false);
				}
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
			if(obj_game.energy > 0)
			{
				obj_game.energy--;
				obj_game.mHealth++;
				obj_game.pHealth--;
				obj_game.sHealth++;
				audio_play_sound(snd_outdoor_bar, 100, false);
			
				myText[1] = "You remember the ads and enjoy responsibly.";
				myTextbox.greenText[1] = "M+ S+ ";
				myTextbox.redText[1] = "E- P-";
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
			myText[1] = "So many activities in this combo venue and yet none that interest you.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}

if (arcadeQuality == 0)
{
	arcadeQuality = irandom_range(1, 5)
}

if(!audio_is_playing(snd_stat_up) && arcadeBonus)
{
	audio_play_sound(snd_outdoor_arcade, 100, false);
	arcadeBonus = false;
}

if(!instance_exists(obj_textbox) && audio_is_playing(snd_outdoor_arcade))
{
	audio_sound_gain(snd_outdoor_arcade, 0, 250);
}

if(audio_sound_get_gain(snd_outdoor_arcade) == 0)
{
	audio_stop_sound(snd_outdoor_arcade);
	audio_sound_gain(snd_outdoor_arcade, 1, 0);
}

if(!instance_exists(obj_textbox) && audio_is_playing(snd_outdoor_bar))
{
	audio_sound_gain(snd_outdoor_bar, 0, 250);
}

if(audio_sound_get_gain(snd_outdoor_bar) == 0)
{
	audio_stop_sound(snd_outdoor_bar);
	audio_sound_gain(snd_outdoor_bar, 1, 0);
}