/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_space)){
	show_debug_message("detected space:" + " page = " + string(page) + " await = " + string(creator.awaitinput) + "  pages" + string(array_length_1d(text)));
	if(!creator.awaitinput){
		advance_textbox_page(self, creator);
	}
}