//Create a textbox when space is pressed near the activity

if(distance_to_object(obj_player) < 5){
	if(keyboard_check_pressed(vk_space)){
		if(myTextbox == noone){
			myTextbox = instance_create_layer(x, y, "Text", obj_textbox);
			myTextbox.text = myText
			myTextbox.creator = self;
			myTextbox.name = myName;
		}
	}
}
else{
	if(myTextbox != noone){
		instance_destroy(myTextbox);
		myTextbox = noone;
		awaitinput = false;
	}
}

//Handle user input from the textbox for certain pages