//Quit to Main Button is pressed

obj_game.paused = false;

//reset variables
obj_game.progress = 1;
obj_game.day = 0;
obj_game.energy = 3;
		
//recreate main menu buttons
room_goto(rm_mainmenu);