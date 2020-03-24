/// @description Insert description here
// You can write your code in this editor

//Check mouse hover:
if (point_in_rectangle(mouse_x, mouse_y, x-width, y-height, x+width, y+height)){
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
			
			case 1: //Play
				with(obj_mainmenu){
					event_user(2);
				}
				room_goto(rm_house);
			break;
				
			case 2: //Options
				with(obj_mainmenu){
					event_user(0);
				}
			break;
			
			case 3: //Quit
				game_end();
			break;
			
			case 4: //Options - Back to Main
				with(obj_mainmenu){
					event_user(1);	
				}
			break;
			
			default:
			
			break;
			
		}
	}
}