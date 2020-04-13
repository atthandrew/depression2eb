/// @description advance_textbox_page(obj_textbox, obj_activity)
myTextbox = argument0;
textboxCreator = argument1;

if(myTextbox.page + 1 < array_length_1d(myTextbox.text)){
	myTextbox.charCount = 0;
	myTextbox.page++;
}
//else we've seen all pages; destroy the textbox
else{
	instance_destroy(myTextbox);
	textboxCreator.alarm[0] = 1;	
}