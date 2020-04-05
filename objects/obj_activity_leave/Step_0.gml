// Inherit the parent event
event_inherited();

if(myTextbox != noone){
	if(myTextbox.page == 0){
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			room_goto(rm_map);
		}
	
		if(keyboard_check_pressed(ord("2")))
		{
			myText[1] = "Maybe I'll stay in today.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}