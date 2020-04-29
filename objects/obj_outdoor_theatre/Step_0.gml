// Inherit the parent event
event_inherited();

if(myTextbox != noone){
	if(myTextbox.page == 0 && !is_warning){
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			if (obj_game.energy > 0)
			{
				obj_game.energy--;
				obj_game.mHealth++;
				obj_game.pHealth--;
				obj_game.sHealth++;
			
				if (filmQuality == 5)
				{
					filmBonus = true;
					myText[1] = "You watched an instant classic! (M+)";
					myTextbox.greenText[1] = "M++ S+ ";
					myTextbox.redText[1] = "E- P-";
					obj_game.mHealth++;
					filmQuality = 0;
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
				}
				else
				{
					myText[1] = "You had a great time at the movies.";
					myTextbox.greenText[1] = "M+ S+ ";
					myTextbox.redText[1] = "E- P-";
					filmQuality = 0;
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
				}
				if(filmBonus)
				{
					audio_play_sound(snd_stat_up, 100, false);
				}
				else
				{
					audio_play_sound(snd_outdoor_theatre, 100, false);
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
			if(obj_game.energy > 1)
			{
				obj_game.energy = obj_game.energy - 2;
				obj_game.mHealth++;
				obj_game.pHealth--;
				obj_game.sHealth = obj_game.sHealth + 2;
			
				if (filmQuality == 5)
				{
					filmBonus = true;
					myText[1] = "You and your friends loved it! (M+)";
					myTextbox.greenText[1] = "M++ S++ ";
					myTextbox.redText[1] = "E-- P-";
					obj_game.mHealth++;
					filmQuality = 0;
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
				}
				else
				{
					myText[1] = "You and your friends had fun at the movies.";
					myTextbox.greenText[1] = "M+ S++ ";
					myTextbox.redText[1] = "E-- P-";
					filmQuality = 0;
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
				}
				if(filmBonus)
				{
					audio_play_sound(snd_stat_up, 100, false);
				}
				else
				{
					audio_play_sound(snd_outdoor_theatre, 100, false);
				}
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
			myText[1] = "You don't see any movies that interest you and decide to go somewhere else.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}

if (filmQuality == 0)
{
	filmQuality = irandom_range(1, 5)
}

if(!audio_is_playing(snd_stat_up) && filmBonus)
{
	audio_play_sound(snd_outdoor_theatre, 100, false);
	filmBonus = false;
}

if(!instance_exists(obj_textbox) && audio_is_playing(snd_outdoor_theatre))
{
	audio_sound_gain(snd_outdoor_theatre, 0, 250);
}

if(audio_sound_get_gain(snd_outdoor_theatre) == 0)
{
	audio_stop_sound(snd_outdoor_theatre);
	audio_sound_gain(snd_outdoor_theatre, 1, 0);
}