if (point_in_rectangle(mouse_x, mouse_y, x-sprite_width, y-sprite_height, x+sprite_width, y+sprite_height)){
	if(mouse_check_button_released(mb_left)){
		if(myTextbox == noone){
			myTextbox = instance_create_layer(x, y, "Text", obj_textbox);
			myTextbox.text = myText
			myTextbox.creator = self;
			myTextbox.name = myName;
		}
	}
}

