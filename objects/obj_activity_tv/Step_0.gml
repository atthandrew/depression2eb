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
				if (obj_game.energy > 0)
				{
					obj_game.energy--;
					obj_game.mHealth++;
					obj_game.pHealth--;
					obj_game.sHealth++;
					obj_game.daysWatched++;
			
					if (obj_game.daysWatched == obj_game.showComplete)
					{
						if (obj_game.showComplete == 1)
						{
							movieQuality = irandom_range(1, 5)
							if (movieQuality < 5)
							{
								myText[1] = "You watched a pretty great movie.";
								myTextbox.greenText[1] = "S+ M+ ";
								myTextbox.redText[1] = "E- P-";
								advance_textbox_page(myTextbox, self);
								awaitinput = false;
								obj_game.showComplete = 0;
								obj_game.daysWatched = 0;
							}
							else
							{
								showBonus = true;
								myText[1] = "You watched one of the greatest movies you've ever seen! (M+)";
								myTextbox.greenText[1] = "S+ M++ ";
								myTextbox.redText[1] = "E- P-";
								obj_game.mHealth++;
								advance_textbox_page(myTextbox, self);
								awaitinput = false;
								obj_game.showComplete = 0;
								obj_game.daysWatched = 0;
							}
						}
						else if (obj_game.showComplete > 1)
						{
							showQuality = irandom_range(1, 3)
							if (showQuality < 3)
							{
								myText[1] = "You finshed a pretty great series.";
								myTextbox.greenText[1] = "S+ M+ ";
								myTextbox.redText[1] = "E- P-";
								advance_textbox_page(myTextbox, self);
								awaitinput = false;
								obj_game.showComplete = 0;
								obj_game.daysWatched = 0;
							}
							else
							{
								showBonus = true;
								myText[1] = "You finished one of your new favorite series! (M+)"
								myTextbox.greenText[1] = "S+ M++ ";
								myTextbox.redText[1] = "E- P-";
								obj_game.mHealth++;
								advance_textbox_page(myTextbox, self);
								awaitinput = false;
								obj_game.showComplete = 0;
								obj_game.daysWatched = 0;
							}
						}
					}
					else
					{
						myText[1] = "You watched a few episodes in the series.";
						myTextbox.greenText[1] = "S+ M+ ";
						myTextbox.redText[1] = "E- P-";
						advance_textbox_page(myTextbox, self);
						awaitinput = false;
					}
					if(showBonus)
					{
						audio_play_sound(snd_stat_up, 100, false);
					}
					else
					{
						audio_play_sound(snd_activity_show, 100, false);
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
				if(obj_game.energy > 0)
				{
					obj_game.energy--;
					obj_game.mHealth++;
					obj_game.pHealth++;
					obj_game.sHealth--;
					obj_game.days_since_work = 0;
					obj_game.daysListened++;
			
					if (obj_game.daysListened == obj_game.songsComplete)
					{
						songDance = irandom_range(1, 2)
						if (songDance == 1)
						{
							danceBonus = true;
							myText[1] = "You discovered a great new artist!";
							myTextbox.greenText[1] = "P+ M++ ";
							myTextbox.redText[1] = "E- S-";
							obj_game.mHealth++;
							advance_textbox_page(myTextbox, self);
							awaitinput = false;
							obj_game.songsComplete = 0;
							obj_game.daysListened = 0;
						}
						else
						{
							obj_game.danceCount++;
							if (obj_game.danceCount == 2)
							{
								danceBonus = true;
								myText[1] = "You've really improved your dancing and showed off a video to some friends! (S+)";
								myTextbox.greenText[1] = "P+ M+ ";
								myTextbox.redText[1] = "E-";
								obj_game.sHealth++;
								advance_textbox_page(myTextbox, self);
								awaitinput = false;
								obj_game.songsComplete = 0;
								obj_game.daysListened = 0;
								obj_game.danceCount = 0;
							}
							else
							{
								myText[1] = "You've gotten a little better at dancing.";
								myTextbox.greenText[1] = "P+ M+ ";
								myTextbox.redText[1] = "E- S-";
								advance_textbox_page(myTextbox, self);
								awaitinput = false;
							}
						}
					}
					else
					{
						myText[1] = "You danced to some great music.";
						myTextbox.greenText[1] = "P+ M+ ";
						myTextbox.redText[1] = "E- S-";
						advance_textbox_page(myTextbox, self);
						awaitinput = false;
					}
					if(danceBonus)
					{
						audio_play_sound(snd_stat_up, 100, false);
					}
					else
					{
						audio_play_sound(snd_activity_dance, 100, false);
					}
				}
				else
				{
					myText[1] = "You don't have enough energy for this activity.";
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
				}
			}
		}
	
		if(keyboard_check_pressed(ord("3")))
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
				myText[1] = "So many shows and nothing to binge.";
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
		}
	}
}

if(!audio_is_playing(snd_stat_up) && showBonus)
{
	audio_play_sound(snd_activity_show, 100, false);
	showBonus = false;
}

if(!audio_is_playing(snd_stat_up) && danceBonus)
{
	audio_play_sound(snd_activity_dance, 100, false);
	danceBonus = false;
}

if(!instance_exists(obj_textbox) && audio_is_playing(snd_activity_show))
{
	audio_sound_gain(snd_activity_show, 0, 250);
}

if(audio_sound_get_gain(snd_activity_show) == 0)
{
	audio_stop_sound(snd_activity_show);
	audio_sound_gain(snd_activity_show, 1, 0);
}

if(!instance_exists(obj_textbox) && audio_is_playing(snd_activity_dance))
{
	audio_sound_gain(snd_activity_dance, 0, 250);
}

if(audio_sound_get_gain(snd_activity_dance) == 0)
{
	audio_stop_sound(snd_activity_dance);
	audio_sound_gain(snd_activity_dance, 1, 0);
}