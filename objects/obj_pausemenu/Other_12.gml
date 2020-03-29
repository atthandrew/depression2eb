//Destroy the main menu buttons after Play is pressed
//Destroy the pause menu buttons after Resume is pressed

with(obj_button){
	obj_game.paused = false;
	instance_destroy();
}