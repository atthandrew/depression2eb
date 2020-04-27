event_inherited();

if(myTextbox != noone){
	if(myTextbox.page == 0 && !is_warning){
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			if(obj_game.energy > 0)
			{
				obj_game.energy--; 
				obj_game.mHealth++;
				obj_game.pHealth++; 
				obj_game.sHealth--;
				//Fade out music
				//audio_sound_gain(GameMusic, 0, 500)
				
					
				myText[1] = "You focus on your breathing and find your center.";
				
				myName = "Meditate";
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
			else
			{
				myText[1] = "You don't have enough energy for this activity";
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
		}
	
		if(keyboard_check_pressed(ord("2")))
		{
			myText[1] = "You don't know if you can calm down enough for that right now.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}

//Fade in music
//if(!instance_exists(obj_textbox) && audio_sound_get_gain(GameMusic) == 0)
//{
//	audio_sound_gain(GameMusic, 1, 500)
//}