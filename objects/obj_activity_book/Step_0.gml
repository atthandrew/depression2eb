// Inherit the parent event
event_inherited();

if(myTextbox != noone){
	if(myTextbox.page == 0 && !is_warning){
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			if(obj_game.energy > 0)
			{
				obj_game.energy--; 
				obj_game.mHealth++;
				obj_game.pHealth--; 
				obj_game.sHealth++;
				daysRead++;
			
				if (daysRead == readComplete)
				{
					bookQuality = irandom_range(1, 5);
					if (bookQuality < 5)
					{
						myText[1] = "You finsihed a pretty good book.";
					}
					else
					{
						myText[1] = "You finished an amazing book! (M+)";
						obj_game.mHealth++;
					}
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
					readComplete = 0;
					daysRead = 0;
				}
				else
				{
					myText[1] = "You finished a few chapters.";
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
			myText[1] = "You can feel yourself falling asleep already and decide against it.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}

if (readComplete == 0)
{
	readComplete = irandom_range(3, 5);
}