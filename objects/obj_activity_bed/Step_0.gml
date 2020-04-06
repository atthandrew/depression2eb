// Inherit the parent event
event_inherited();

if(myTextbox != noone){
	if(myTextbox.page == 0 && !is_warning){
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			obj_game.bed = true;
		}
	
		if(keyboard_check_pressed(ord("2")))
		{
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}