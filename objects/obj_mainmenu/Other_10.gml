
//Options Button has been selected

with(obj_button){
	instance_destroy();
}

//Options Menu Buttons
var buttonBackToMain = instance_create_depth(gui_width/2, gui_height/2, -4096, obj_button);
buttonBackToMain.BUTTON_TYPE = 4;
buttonBackToMain.hoverValue = 4;
buttonBackToMain.buttonX = gui_width/2;
buttonBackToMain.buttonY = gui_height/2;
buttonBackToMain.offset = 0;