event_inherited();

//Handle user input from the textbox for certain pages

if(myTextbox.page == 1){
	awaitinput = true;
	if(keyboard_check_pressed(ord("Y"))){
		awaitinput = false;
		instance_destroy(myTextbox);
		room_goto(rm_house);
	}
	
	if(keyboard_check_pressed(ord("N"))){
		awaitinput = false;
		
		instance_destroy(myTextbox);
		
		//reset variables
		obj_game.progress = 1;
		obj_game.day = 0;
		obj_game.energy = 3;
		
		//recreate main menu buttons
		room_goto(rm_mainmenu);
	}
}