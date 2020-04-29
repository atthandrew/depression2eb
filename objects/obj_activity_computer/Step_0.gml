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
				obj_game.daysGamed++;
			
				if (obj_game.daysGamed == obj_game.gameComplete)
				{
					gameBonus = true;
					myText[1] = "You and your friends finished the game! Time to find a new one. (S+)";
					obj_game.sHealth++;
					myTextbox.greenText[1] = "M+ S++ ";
					myTextbox.redText[1] = "E- P-";
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
					obj_game.gameComplete = 0;
					obj_game.daysGamed = 0;
				}
				else
				{
					myText[1] = "You and your friends played games online.";
					myTextbox.greenText[1] = "M+ S+ ";
					myTextbox.redText[1] = "E- P-";
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
				}
				if(gameBonus)
				{
					audio_play_sound(snd_stat_up, 100, false);
				}
				else
				{
					audio_play_sound(snd_activity_computerGame, 100, false);
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
				obj_game.pHealth++;
				obj_game.sHealth--;
				obj_game.days_since_work = 0;
				obj_game.daysWorked++;
			
				if (obj_game.daysWorked == obj_game.workComplete)
				{
					workBonus = true;
					myText[1] = "You finished your project and got a bonus! (P+)";
					obj_game.pHealth++;
					myTextbox.greenText[1] = "M+ P++ ";
					myTextbox.redText[1] = "E-- S-";
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
					obj_game.workComplete = 0;
					obj_game.daysWorked = 0;
				}
				else
				{
					myText[1] = "You worked on your project.";
					myTextbox.greenText[1] = "M+ P+ ";
					myTextbox.redText[1] = "E-- S-";
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
				}
				if(workBonus)
				{
					audio_play_sound(snd_stat_up, 100, false);
				}
				else
				{
					audio_play_sound(snd_activity_computerWork, 100, false);
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
			myText[1] = "You're afraid the cat memes will consume you again and walk away.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}

if(!audio_is_playing(snd_stat_up) && gameBonus)
{
	audio_play_sound(snd_activity_computerGame, 100, false);
	gameBonus = false;
}

if(!audio_is_playing(snd_stat_up) && workBonus)
{
	audio_play_sound(snd_activity_computerWork, 100, false);
	workBonus = false;
}

if(!instance_exists(obj_textbox) && audio_is_playing(snd_activity_computerGame))
{
	audio_sound_gain(snd_activity_computerGame, 0, 250);
}

if(audio_sound_get_gain(snd_activity_computerGame) == 0)
{
	audio_stop_sound(snd_activity_computerGame);
	audio_sound_gain(snd_activity_computerGame, 1, 0);
}

if(!instance_exists(obj_textbox) && audio_is_playing(snd_activity_computerWork))
{
	audio_sound_gain(snd_activity_computerWork, 0, 250);
}

if(audio_sound_get_gain(snd_activity_computerWork) == 0)
{
	audio_stop_sound(snd_activity_computerWork);
	audio_sound_gain(snd_activity_computerWork, 1, 0);
}