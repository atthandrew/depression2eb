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
					daysWatched++;
			
					if (daysWatched == showComplete)
					{
						if (showComplete == 1)
						{
							movieQuality = irandom_range(1, 5)
							if (movieQuality < 5)
							{
								myText[1] = "You watched a pretty great movie.";
							}
							else
							{
								myText[1] = "You watched one of the greatest movies you've ever seen! (M+)";
								obj_game.mHealth++;
							}
						}
						else if (showComplete > 1)
						{
							showQuality = irandom_range(1, 5)
							if (showQuality < 5)
							{
								myText[1] = "You finshed a pretty great series.";
							}
							else
							{
								myText[1] = "You finished one of your new favorite series! (M+)"
								obj_game.mHealth++;
							}
						}
						advance_textbox_page(myTextbox, self);
						awaitinput = false;
						showComplete = 0;
						daysWatched = 0;
					}
					else
					{
						myText[1] = "You watched a few episodes in the series.";
						advance_textbox_page(myTextbox, self);
						awaitinput = false;
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
					daysListened++;
			
					if (daysListened == songsComplete)
					{
						songDance = irandom_range(1, 2)
						if (songDance == 1)
						{
							myText[1] = "You discovered a great new artist!";
						}
						else
						{
							danceBonus++;
							if (danceBonus == 3)
							{
								myText[1] = "You've really improved your dancing and showed off a video to some friends! (S+)";
								obj_game.sHealth++;
								danceBonus = 0;
							}
							else
							{
								myText[1] = "You've gotten a little better at dancing.";
							}
						}
						advance_textbox_page(myTextbox, self);
						awaitinput = false;
						songsComplete = 0;
						daysListened = 0;
					}
					else
					{
						myText[1] = "You danced to some great music.";					
						advance_textbox_page(myTextbox, self);
						awaitinput = false;
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

if (showComplete == 0)
{
	showComplete = irandom_range(1, 5);
}

if (songsComplete == 0)
{
	songsComplete = irandom_range(1, 3);
}