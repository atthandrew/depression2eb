// Inherit the parent event
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
				if(obj_game.energy > 0)
				{
					obj_game.energy--;
					obj_game.mHealth++;
					obj_game.pHealth--;
					obj_game.sHealth++;
					obj_game.days_since_cleaning = 0;
					audio_play_sound(snd_activity_clean, 100, false);
			
					myText[1] = "The house looks much better now";
					myTextbox.greenText[1] = "M+ S+ ";
					myTextbox.redText[1] = "E- P-";
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
				myText[1] = "You haven't seen any cockroaches yet.";
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
		}
	}
}

if(!instance_exists(obj_textbox) && audio_is_playing(snd_activity_clean))
{
	audio_sound_gain(snd_activity_clean, 0, 250);
}

if(audio_sound_get_gain(snd_activity_clean) == 0)
{
	audio_stop_sound(snd_activity_clean);
	audio_sound_gain(snd_activity_clean, 1, 0);
}