/// @description Insert description here
// You can write your code in this editor
awaitinput = false;
myText[0] = "";
myName = "";

myTextbox = instance_create_layer(x, y, "Text", obj_textbox);
myTextbox.text = myText
myTextbox.creator = self;
myTextbox.name = myName;