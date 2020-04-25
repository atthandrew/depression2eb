/// @description Insert description here
// You can write your code in this editor

//Check mouse hover:
if (point_in_rectangle(mouse_x, mouse_y, x-width, y-height+offset, x+width, y+height+offset)){
	hover = 1;
	hoverColor = c_silver;

	if(mouse_check_button(mb_left)){
	hover = 2;
	hoverColor = c_aqua;
	}
}

//Set to 0 when not hovering
else{
	hover = 0;
	hoverColor = c_dkgray;
}

//Check if hovering, then perform button function
if(hover == 1){
	if(mouse_check_button_released(mb_left)){
		
		switch(BUTTON_TYPE){
			
			//MAIN MENU BUTTONS
			
			case 1: //Play
				audio_play_sound(snd_accept, 100, false);
				with(obj_mainmenu){
					event_user(2);
				}
				room_goto(rm_house);
			break;
				
			case 2: //Options
				audio_play_sound(snd_accept, 100, false);
				with(obj_mainmenu){
					event_user(0);
				}
				with(obj_pausemenu){
					event_user(0);
				}
			break;
			
			case 3: //Quit
				game_end();
			break;
			
			case 4: //Options - Back
				audio_play_sound(snd_pause, 100, false);
				with(obj_mainmenu){
					event_user(1);	
				}
				with(obj_pausemenu){
					event_user(3);
				}
			break;
			
			//PAUSE MENU BUTTONS
			
			case 5: //Resume button pressed
				audio_play_sound(snd_accept, 100, false);
				with(obj_pausemenu){
					event_user(2);
				}
			break;
			
			case 6: //Quit to Main button pressed
				audio_play_sound(snd_pause, 100, false);
				with(obj_pausemenu){
					event_user(4);
				}
			break;
			
			case 7: //Options - Text Speed
				audio_play_sound(snd_accept, 100, false);
				with(obj_mainmenu){
					event_user(5);
				}
				with(obj_pausemenu){
					event_user(5);	
				}
			break;
			
			//TEXT SPEED BUTTONS
			
			case 8: //SLOW
				audio_play_sound(snd_accept, 100, false);
				obj_game.text_speed = 0.5;
				with(obj_mainmenu){
					event_user(0);
				}
				with(obj_pausemenu){
					event_user(0);
				}
			break;
			
			case 9: //MEDIUM
				audio_play_sound(snd_accept, 100, false);
				obj_game.text_speed = 1.0;
				with(obj_mainmenu){
					event_user(0);
				}
				with(obj_pausemenu){
					event_user(0);
				}
			break;
			
			case 10: //FAST
				audio_play_sound(snd_accept, 100, false);
				obj_game.text_speed = 2.0;
				with(obj_mainmenu){
					event_user(0);
				}
				with(obj_pausemenu){
					event_user(0);
				}
			break;
			
			default:
			
			break;
			
		}
	}
}