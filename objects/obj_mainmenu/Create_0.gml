
hoverValue = 0;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

titleX = gui_width/2;
titleY = gui_height/2 - 300;

//Main menu buttons
var buttonPlay = instance_create_depth(gui_width/2, gui_height/2, -4096, obj_button);
buttonPlay.BUTTON_TYPE = 1;
buttonPlay.hoverValue = 1;
buttonPlay.buttonX = gui_width/2;
buttonPlay.buttonY = gui_height/2;
buttonPlay.offset = 0;

var buttonOptions = instance_create_depth(gui_width/2, gui_height/2, -4096, obj_button);
buttonOptions.BUTTON_TYPE = 2;
buttonOptions.hoverValue = 2;
buttonOptions.buttonX = gui_width/2;
buttonOptions.buttonY = gui_height/2 + 60;
buttonOptions.offset = 60;

var buttonQuit = instance_create_depth(gui_width/2, gui_height/2, -4096, obj_button);
buttonQuit.BUTTON_TYPE = 3;
buttonQuit.hoverValue = 3;
buttonQuit.buttonX = gui_width/2;
buttonQuit.buttonY = gui_height/2 + 120;
buttonQuit.offset = 120;