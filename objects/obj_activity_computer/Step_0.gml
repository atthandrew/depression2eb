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
				daysGamed++;
			
				if (daysGamed == gameComplete)
				{
					myText[1] = "You and your friends finished the game! Time to find a new one. (S+)";
					obj_game.sHealth++;
					myTextbox.greenText = "M+ S++ ";
					myTextbox.redText = "E- P-";
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
					gameComplete = 0;
					daysGamed = 0;
				}
				else
				{
					myText[1] = "You and your friends played games online.";
					myTextbox.greenText = "M+ S+ ";
					myTextbox.redText = "E- P-";
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
				obj_game.pHealth++;
				obj_game.sHealth--;
				obj_game.days_since_work = 0;
				daysWorked++;
			
				if (daysWorked == workComplete)
				{
					myText[1] = "You finished your project and got a bonus! (P+)";
					obj_game.pHealth++;
					myTextbox.greenText = "M+ P++ ";
					myTextbox.redText = "E-- S-";
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
					workComplete = 0;
					daysWorked = 0;
				}
				else
				{
					myText[1] = "You worked on your project.";
					myTextbox.greenText = "M+ P+ ";
					myTextbox.redText = "E-- S-";
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
			myText[1] = "You're afraid the cat memes will consume you again and walk away.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}

if (gameComplete == 0)
{
	gameComplete = irandom_range(4, 8);
}

if (workComplete == 0)
{
	workComplete = irandom_range(3, 5);
}