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
				obj_game.pHealth++;
				obj_game.sHealth--;
				daysPracticed++;
			
				if (daysPracticed == practiceComplete)
				{
					myText[1] = "You mastered a new song! (P+)";
					obj_game.pHealth++;
					myTextbox.greenText = "M+ P++ ";
					myTextbox.redText = "E- S-";
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
					practiceComplete = 0;
					daysPracticed = 0;
				}
				else
				{
					myText[1] = "You practiced your songs."
					myTextbox.greenText = "M+ P+ ";
					myTextbox.redText = "E- S-";
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
			myText[1] = "Practice might make perfect, but that takes work.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}

if (practiceComplete == 0)
{
	practiceComplete = irandom_range(5, 8)
}