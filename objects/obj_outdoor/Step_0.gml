if(point_in_rectangle(mouse_x, mouse_y, x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2)){
	image_index = 1;
	if(mouse_check_button_released(mb_left)){
		if(myTextbox == noone){
			myTextbox = instance_create_layer(x, y, "Text", obj_textbox);
			myTextbox.text = myText
			myTextbox.creator = self;
			myTextbox.name = myName;
		}
	}
}
else{
	image_index = 0;
}