/// @description Insert description here
// You can write your code in this editor
if(room == rm_house){
	if(fadein){
		if(opacity > 0){
			opacity -= increment;	
		}
		else{
			fadein = false;
		}
	}
	
	if(fadeout){
		if(opacity < 1){
			opacity += increment;
		}
		else{
			fadeout = false;
			obj_game.bed = true;
		}
	}
}

if(room == rm_daytransition){
	if(fadein){
		if(opacity > 0){
			opacity -= increment;	
		}
		else{
			fadein = false;
		}
	}
	
	if(fadeout){
		if(opacity < 1){
			opacity += increment;
		}
		else{
			room_goto(rm_house);
			fadeout = false;
		}
	}
}