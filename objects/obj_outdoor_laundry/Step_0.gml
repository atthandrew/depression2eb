// Inherit the parent event
event_inherited();

if(myTextbox != noone)
{
	//TODO (should this be in the create event?)
	if(obj_game.days_since_laundry > 1 || (obj_game.progress == 1 && obj_game.days_since_laundry != 0))
	{
		myText[0] = "Do your laundry?\n  1 to accept (E- M+ P- S+)\n  2 to reject";
		if(myTextbox.page == 0 && !is_warning)
		{
			awaitinput = true;
			if(keyboard_check_pressed(ord("1")))
			{
				if (obj_game.energy > 0)
				{
					obj_game.energy--;
					obj_game.mHealth++;
					obj_game.pHealth--;
					obj_game.sHealth++;
					audio_play_sound(snd_outdoor_laundry, 100, false);
			
					if (obj_game.days_since_laundry > 5)
					{
						myText[1] = "Your clothes smell much better now.";
						myTextbox.greenText[1] = "S+ M+ ";
						myTextbox.redText[1] = "E- P-";
					}
					else
					{
						myText[1] = "Your fresh clothes warm your skin.";
						myTextbox.greenText[1] = "S+ M+ ";
						myTextbox.redText[1] = "E- P-";
					}
			
					obj_game.days_since_laundry = 0;
					newText[0] = "You already did your laundry recently.";
					myText = newText;
					myName = "You";
			
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
				if (obj_game.days_since_laundry > 5)
				{
					myText[1] = "Your clothes don't smell that bad yet, do they?";
				}
				else
				{
					myText[1] = "You've still got some clean clothes left.";
				}
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
		}
	}
}

if(!instance_exists(obj_textbox) && audio_is_playing(snd_outdoor_laundry))
{
	audio_sound_gain(snd_outdoor_laundry, 0, 250);
}

if(audio_sound_get_gain(snd_outdoor_laundry) == 0)
{
	audio_stop_sound(snd_outdoor_laundry);
	audio_sound_gain(snd_outdoor_laundry, 1, 0);
}