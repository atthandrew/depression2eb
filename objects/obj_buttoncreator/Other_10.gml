
//Options Button has been selected

with(obj_button){
	instance_destroy();
}

//Options Menu Buttons
var buttonBackToMain = instance_create_depth(room_width/2, room_height/2, -4096, obj_button);
buttonBackToMain.BUTTON_TYPE = 4;
buttonBackToMain.hoverValue = 4;