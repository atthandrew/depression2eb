// Inherit the parent event
event_inherited();

if(myTextbox != noone){
	if(myTextbox.page == 0){
		awaitinput = true;
		if(keyboard_check_pressed(ord("1"))){
			obj_game.energy--;
			obj_game.mHealth++;
			obj_game.pHealth--;
			obj_game.sHealth++;
			
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	
		if(keyboard_check_pressed(ord("2"))){
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}