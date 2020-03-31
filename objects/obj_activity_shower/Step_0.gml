// Inherit the parent event
event_inherited();

if(myTextbox != noone){
	if(obj_game.days_since_shower != 0){
		if(myTextbox.page == 0 && obj_game.days_since_shower > 0){
			awaitinput = true;
			if(keyboard_check_pressed(ord("1"))){
				obj_game.energy--;
				obj_game.mHealth--;
				obj_game.pHealth++;
				obj_game.sHealth++;
			
				//Record that you've taken a shower
				obj_game.days_since_shower = 0;
				newText[0] = "I already took a shower today."
				myText = newText;
				myName = "You";
			
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
	
			if(keyboard_check_pressed(ord("2"))){
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
		}
	}
}