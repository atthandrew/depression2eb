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
					obj_game.daysRead++;
			
					if (obj_game.daysRead == obj_game.readComplete)
					{
						bookQuality = irandom_range(1, 3);
						if (bookQuality < 3)
						{
							myText[1] = "You finished a pretty good book.";
							myTextbox.greenText[1] = "S+ M+ ";
							myTextbox.redText[1] = "E- P-";
							advance_textbox_page(myTextbox, self);
							awaitinput = false;
							obj_game.readComplete = 0;
							obj_game.daysRead = 0;
						}
						else
						{
							bookBonus = true;
							myText[1] = "You finished an amazing book! (M+)";
							myTextbox.greenText[1] = "S+ M++ ";
							myTextbox.redText[1] = "E- P-";
							obj_game.mHealth++;
							advance_textbox_page(myTextbox, self);
							awaitinput = false;
							obj_game.readComplete = 0;
							obj_game.daysRead = 0;
						}
					}
					else
					{
						myText[1] = "You finished a few chapters.";
						myTextbox.greenText[1] = "S+ M+ ";
						myTextbox.redText[1] = "E- P-";
						advance_textbox_page(myTextbox, self);
						awaitinput = false;
					}
					if (bookBonus)
					{
						audio_play_sound(snd_stat_up, 100, false);
					}
					else
					{
						audio_play_sound(snd_activity_book, 100, false);
					}
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
			if (obj_game.progress == 8)
			{
				myText[1] = "The weight grows heavy and you long to return to your room.";
				
				myName = "You";
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
			else
			{
				myText[1] = "You can feel yourself falling asleep already and decide against it.";
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
		}
	}
}

if(!audio_is_playing(snd_stat_up) && bookBonus)
{
	audio_play_sound(snd_activity_book, 100, false);
	bookBonus = false;
}

if(!instance_exists(obj_textbox) && audio_is_playing(snd_activity_book))
{
	audio_sound_gain(snd_activity_book, 0, 250);
}

if(audio_sound_get_gain(snd_activity_book) == 0)
{
	audio_stop_sound(snd_activity_book);
	audio_sound_gain(snd_activity_book, 1, 0);
}