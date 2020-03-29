// Inherit the parent event
event_inherited();

//Handle user input from the textbox for certain pages
if(myTextbox != noone){
	if(myTextbox.page == 1){
		awaitinput = true;
		if(keyboard_check_pressed(ord("Y"))){
			obj_game.energy--;
			obj_game.mHealth++;
			obj_game.pHealth--;
			obj_game.sHealth++;
			
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	
		if(keyboard_check_pressed(ord("N"))){
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}