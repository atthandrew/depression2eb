event_inherited();

//Handle user input from the textbox for certain pages

if(myTextbox.page == 1){
	awaitinput = true;
	if(keyboard_check_pressed(ord("Y"))){
		//advance_textbox_page(myTextbox, self);
		//awaitinput = false;
		instance_destroy(myTextbox);
		room_goto(rm_house);
	}
}