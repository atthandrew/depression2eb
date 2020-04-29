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
					obj_game.daysPainted++;
			
					if (obj_game.daysPainted == obj_game.paintComplete)
					{
						obj_game.paintPractice++;
						artQuality = irandom_range(1, 3);
						if (artQuality < 3)
						{
							if(obj_game.paintPractice < 3)
							{
								myText[1] = "You finished the piece.";
								myTextbox.greenText[1] = "M+ P+ ";
								myTextbox.redText[1] = "E- S-";
								advance_textbox_page(myTextbox, self);
								awaitinput = false;
								obj_game.paintComplete = 0;
								obj_game.daysPainted = 0;
							}
							else
							{
								artBonus = true;
								myText[1] = "You've painted enough to really improve your skills! (S+)";
								myTextbox.greenText[1] = "M+ P+ ";
								myTextbox.redText[1] = "E-";
								obj_game.sHealth++;
								advance_textbox_page(myTextbox, self);
								awaitinput = false;
								obj_game.paintComplete = 0;
								obj_game.daysPainted = 0;
								obj_game.paintPractice = 0;
							}
						}
						else
						{
							if(obj_game.paintPractice == 3)
							{
								obj_game.paintPractice = 0;
							}
							artBonus = true;
							myText[1] = "You created a masterpiece! (S+)";
							myTextbox.greenText[1] = "M+ P+ ";
							myTextbox.redText[1] = "E-";
							obj_game.sHealth++;
							advance_textbox_page(myTextbox, self);
							awaitinput = false;
							obj_game.readComplete = 0;
							obj_game.daysRead = 0;
						}
					}
					else
					{
						myText[1] = "You worked on your painting.";
						myTextbox.greenText[1] = "M+ P+ ";
						myTextbox.redText[1] = "E- S-";
						advance_textbox_page(myTextbox, self);
						awaitinput = false;
					}
					if (artBonus)
					{
						audio_play_sound(snd_stat_up, 100, false);
					}
					else
					{
						audio_play_sound(snd_activity_art, 100, false);
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
				myText[1] = "You aren't feeling particularly inspired at the moment.";
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
		}
	}
}

if(!audio_is_playing(snd_stat_up) && artBonus)
{
	audio_play_sound(snd_activity_art, 100, false);
	artBonus = false;
}

if(!instance_exists(obj_textbox) && audio_is_playing(snd_activity_art))
{
	audio_sound_gain(snd_activity_art, 0, 250);
}

if(audio_sound_get_gain(snd_activity_art) == 0)
{
	audio_stop_sound(snd_activity_art);
	audio_sound_gain(snd_activity_art, 1, 0);
}