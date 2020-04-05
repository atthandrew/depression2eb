// Inherit the parent event
event_inherited();

if(myTextbox != noone){
	if(myTextbox.page == 1){
		awaitinput = true;
		if(keyboard_check_pressed(ord("1"))){
			stay_on_map = false;
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	
		if(keyboard_check_pressed(ord("2"))){
			stay_on_map = true;
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}