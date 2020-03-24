event_inherited();

//Handle user input from the textbox for certain pages

if(myTextbox.page == 1){
	awaitinput = true;
	if(keyboard_check_pressed(ord("Y"))){
		awaitinput = false;
		
		instance_destroy(myTextbox);
		obj_game.progress = 1;
		obj_game.day = 0;
		obj_game.energy = 3;
		room_goto(rm_mainmenu);
	}
	
	if(keyboard_check_pressed(ord("N"))){
		game_end();
	}
}