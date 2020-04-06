event_inherited();

//Handle user input from the textbox for certain pages

if(myTextbox.page == 1){
	awaitinput = true;
	if(keyboard_check_pressed(ord("1"))){
		awaitinput = false;
		
		instance_destroy(myTextbox);
		obj_game.mHealth = 5;
		obj_game.pHealth = 5;
		obj_game.sHealth = 5;
		obj_game.progress = 1;
		obj_game.day = 0;
		obj_game.energy = 3;
		room_goto(rm_mainmenu);
	}
	
	if(keyboard_check_pressed(ord("2"))){
		game_end();
	}
}