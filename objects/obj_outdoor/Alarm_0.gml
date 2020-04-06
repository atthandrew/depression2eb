/// @description Insert description here
// You can write your code in this editor
myTextbox = noone;

if(is_warning){
	is_warning = false;
}

if(!obj_game.warning_given && obj_game.energy == 0){
	is_warning = true;
	obj_game.warning_given = true;
	if(myTextbox == noone){
		myTextbox = instance_create_layer(x, y, "Text", obj_textbox);
		warningText[0] = "You're out of energy for the day. You can plan ahead or go to bed for the day.";
		myTextbox.text = warningText;
		myTextbox.creator = self;
		myTextbox.name = myName;
		obj_game.paused = true;
	}
}