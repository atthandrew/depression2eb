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
				obj_game.mHealth++;
				obj_game.pHealth++;
				obj_game.sHealth--;
				obj_game.daysPracticed++;
			
				if (obj_game.daysPracticed == obj_game.practiceComplete)
				{
					practiceBonus = true;
					myText[1] = "You mastered a new song! (M+)";
					obj_game.mHealth++;
					myTextbox.greenText[1] = "M++ P+ ";
					myTextbox.redText[1] = "E- S-";
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
					obj_game.practiceComplete = 0;
					obj_game.daysPracticed = 0;
				}
				else
				{
					myText[1] = "You practiced your songs."
					myTextbox.greenText[1] = "M+ P+ ";
					myTextbox.redText[1] = "E- S-";
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
				}
				if(practiceBonus)
				{
					audio_play_sound(snd_stat_up, 100, false);
				}
				else
				{
					audio_play_sound(snd_activity_instrument, 100, false);
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
			myText[1] = "Practice might make perfect, but that takes work.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}

if (!audio_is_playing(snd_stat_up) && practiceBonus)
{
	audio_play_sound(snd_activity_instrument, 100, false);
	practiceBonus = false;
}

if(!instance_exists(obj_textbox) && audio_is_playing(snd_activity_instrument))
{
	audio_sound_gain(snd_activity_instrument, 0, 250);
}

if(audio_sound_get_gain(snd_activity_instrument) == 0)
{
	audio_stop_sound(snd_activity_instrument);
	audio_sound_gain(snd_activity_instrument, 1, 0);
}