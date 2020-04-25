/// @description Insert description here

//Text Speed Options Selected
with(obj_button){
	instance_destroy();
}

var buttonPlay = instance_create_depth(gui_width/2, gui_height/2, -4096, obj_button);
buttonPlay.BUTTON_TYPE = 8;
buttonPlay.hoverValue = 8;
buttonPlay.buttonX = gui_width/2;
buttonPlay.buttonY = gui_height/2;
buttonPlay.offset = 0;

var buttonOptions = instance_create_depth(gui_width/2, gui_height/2, -4096, obj_button);
buttonOptions.BUTTON_TYPE = 9;
buttonOptions.hoverValue = 9;
buttonOptions.buttonX = gui_width/2;
buttonOptions.buttonY = gui_height/2 + 60;
buttonOptions.offset = 60;

var buttonQuit = instance_create_depth(gui_width/2, gui_height/2, -4096, obj_button);
buttonQuit.BUTTON_TYPE = 10;
buttonQuit.hoverValue = 10;
buttonQuit.buttonX = gui_width/2;
buttonQuit.buttonY = gui_height/2 + 120;
buttonQuit.offset = 120;