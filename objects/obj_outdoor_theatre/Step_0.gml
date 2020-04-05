// Inherit the parent event
event_inherited();

if(myTextbox != noone){
	if(myTextbox.page == 0){
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			if (obj_game.energy > 0)
			{
				obj_game.energy--;
				obj_game.mHealth++;
				obj_game.pHealth--;
				obj_game.sHealth++;
			
				if (filmQuality == 10)
				{
					myText[1] = "You watched an instant classic! (M+)";
					obj_game.mHealth++;
					filmQuality = 0;
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
				}
				else
				{
					myText[1] = "You had a great time at the movies.";
					filmQuality = 0;
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
		
		if(keyboard_check_pressed(ord("2")))
		{
			if(obj_game.energy > 1)
			{
				obj_game.energy = obj_game.energy - 2;
				obj_game.mHealth++;
				obj_game.pHealth--;
				obj_game.sHealth = obj_game.sHealth + 2;
			
				if (filmQuality == 10)
				{
					myText[1] = "You and your friends loved it! (M+)";
					obj_game.mHealth++;
					filmQuality = 0;
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
				}
				else
				{
					myText[1] = "You and your friends had fun at the movies.";
					filmQuality = 0;
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
	
		if(keyboard_check_pressed(ord("3")))
		{
			myText[1] = "You don't see any movies that interest you and decide to go somewhere else.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}

if (filmQuality == 0)
{
	filmQuality = irandom_range(1, 10)
}