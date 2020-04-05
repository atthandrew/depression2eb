// Inherit the parent event
event_inherited();

if(myTextbox != noone){
	if(myTextbox.page == 0){
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			if (obj_game.progress == 4)
			{
				myText[1] = "You try to summon the will to leave, but it escapes you.";
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
			else
			{
				room_goto(rm_map);
			}
		}
	
		if(keyboard_check_pressed(ord("2")))
		{
			myText[1] = "You decide you'd rather stay home.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}