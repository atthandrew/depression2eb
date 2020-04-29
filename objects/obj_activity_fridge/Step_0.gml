event_inherited();

if(myTextbox != noone){
	if(myTextbox.page == 0 && !is_warning){
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			if(obj_game.progress == 8)
			{
				myText[1] = "The weight grows heavy and you long to return to your room.";
				
				myName = "You";
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
			else
			{
				if(obj_game.snackAmount > 0)
				{
					snackBonus = true;
					myText[1] = "You find a tasty snack!";
					
					myName = "Fridge";
					obj_game.energy++;
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
					obj_game.snackAmount--;
				}
				else
				{
					myText[1] = "You don't find anything that looks good.";
					
					myName = "Fridge";
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
				}
				if(snackBonus)
				{
					audio_play_sound(snd_stat_up, 100, false);
				}
				else
				{
					audio_play_sound(snd_activity_fridge, 100, false);
				}
			}
		}
	
		if(keyboard_check_pressed(ord("2")))
		{
			if(obj_game.progress == 8)
			{
				myText[1] = "The weight grows heavy and you long to return to your room.";
				
				myName = "You";
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
			else
			{
				myText[1] = "You aren't feeling hungry yet.";
				
				myName = "Fridge";
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
		}
	}
}

if(!audio_is_playing(snd_stat_up) && snackBonus)
{
	audio_play_sound(snd_activity_fridge, 100, false);
	snackBonus = false;
}

if(!instance_exists(obj_textbox) && audio_is_playing(snd_activity_fridge))
{
	audio_sound_gain(snd_activity_fridge, 0, 250);
}

if(audio_sound_get_gain(snd_activity_fridge) == 0)
{
	audio_stop_sound(snd_activity_fridge);
	audio_sound_gain(snd_activity_fridge, 1, 0);
}