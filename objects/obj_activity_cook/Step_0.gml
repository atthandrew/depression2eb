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
					obj_game.pHealth++;
					obj_game.sHealth--;
					obj_game.daysCooked++;
					obj_game.days_since_cooking = 0;
			
					if (obj_game.daysCooked == obj_game.recipeComplete)
					{
						mealQuality = irandom_range(1, 3);
						if (mealQuality < 3)
						{
							myText[1] = "You learned a new recipe.";
							myTextbox.greenText[1] = "P+ M+ ";
							myTextbox.redText[1] = "E- S-";
							advance_textbox_page(myTextbox, self);
							awaitinput = false;
							obj_game.recipeComplete = 0;
							obj_game.daysCooked = 0;
						}
						else
						{
							mealBonus = true;
							myText[1] = "You perfected a recipe and made a five star dish! (P+)";
							myTextbox.greenText[1] = "P++ M+ ";
							myTextbox.redText[1] = "E- S-";
							obj_game.pHealth++;
							advance_textbox_page(myTextbox, self);
							awaitinput = false;
							obj_game.recipeComplete = 0;
							obj_game.daysCooked = 0;
						}
					}
					else
					{
						myText[1] = "You cooked yourself a nice homemade meal."
						myTextbox.greenText[1] = "P+ M+ ";
						myTextbox.redText[1] = "E- S-";
						advance_textbox_page(myTextbox, self);
						awaitinput = false;
					}
					if(mealBonus)
					{
						audio_play_sound(snd_stat_up, 100, false);
					}
					else
					{
						audio_play_sound(snd_activity_cook, 100, false);
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
			if(obj_game.progress == 8)
			{
				myText[1] = "The weight grows heavy and you long to return to your room.";
				
				myName = "You";
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
			else
			{
				myText[1] = "Maybe you'll just order takeout.";
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
		}
	}
}

if(!audio_is_playing(snd_stat_up) && mealBonus)
{
	audio_play_sound(snd_activity_cook, 100, false);
	mealBonus = false;
}

if(!instance_exists(obj_textbox) && audio_is_playing(snd_activity_cook))
{
	audio_sound_gain(snd_activity_cook, 0, 250);
}

if(audio_sound_get_gain(snd_activity_cook) == 0)
{
	audio_stop_sound(snd_activity_cook);
	audio_sound_gain(snd_activity_cook, 1, 0);
}