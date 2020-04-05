// Inherit the parent event
event_inherited();

if(myTextbox != noone){
	if(obj_game.days_since_shower != 0){
		if(myTextbox.page == 0 && obj_game.days_since_shower > 0){
			awaitinput = true;
			if(keyboard_check_pressed(ord("1")))
			{
				if(obj_game.energy > 0)
				{
					obj_game.energy--;
					obj_game.mHealth--;
					obj_game.pHealth++;
					obj_game.sHealth++;
			
					if(obj_game.days_since_shower > 2)
					{
						myText[1] = "You feel much cleaner and refreshed now.";	
					}
					else
					{
						myText[1] = "You freshen up and feel better.";
					}
					//Record that you've taken a shower
					obj_game.days_since_shower = 0;
					newText[0] = "You already took a shower today."
					myText = newText;
					myName = "You";
					
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
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
				if (obj_game.days_since_shower > 2)
				{
					myText[1] = "It hasn't been that long since you showered, has it?";
				}
				else
				{
					myText[1] = "You don't feel too dirty yet.";
				}
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
		}
	}
}