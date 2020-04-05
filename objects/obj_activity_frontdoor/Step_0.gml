// Inherit the parent event
event_inherited();

if(myTextbox != noone){
	if(myTextbox.page == 0){
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			if(obj_game.energy > 0)
			{
				room_goto(rm_map);
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
			myText[1] = "Maybe I'll stay in today.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}