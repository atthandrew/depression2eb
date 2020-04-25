
//Options Button has been selected

with(obj_button){
	instance_destroy();
}

//Options Menu Buttons
var buttonPlay = instance_create_depth(gui_width/2, gui_height/2, -4096, obj_button);
buttonPlay.BUTTON_TYPE = 7;
buttonPlay.hoverValue = 7;
buttonPlay.buttonX = gui_width/2;
buttonPlay.buttonY = gui_height/2;
buttonPlay.offset = 0;

var buttonOptions = instance_create_depth(gui_width/2, gui_height/2, -4096, obj_button);
buttonOptions.BUTTON_TYPE = 4;
buttonOptions.hoverValue = 4;
buttonOptions.buttonX = gui_width/2;
buttonOptions.buttonY = gui_height/2 + 60;
buttonOptions.offset = 60;