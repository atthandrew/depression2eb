event_inherited();

//Handle user input from the textbox for certain pages
if(myTextbox != noone){
	if(myTextbox.page == 1){
		awaitinput = true;
		if(keyboard_check_pressed(ord("Y"))){
			obj_player.energy--;
			obj_player.mHealth++;
			obj_player.pHealth--;
			obj_player.sHealth++;
			
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	
		if(keyboard_check_pressed(ord("N"))){
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}