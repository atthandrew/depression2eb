/// @description Insert description here
// You can write your code in this editor

if(!obj_game.paused){
	input_left = (keyboard_check(vk_left) || keyboard_check(ord("A")));
	input_right = (keyboard_check(vk_right) || keyboard_check(ord("D")));
	input_up = (keyboard_check(vk_up) || keyboard_check(ord("W")));
	input_down = (keyboard_check(vk_down) || keyboard_check(ord("S")));

	hInput = input_right - input_left;
	vInput = input_down - input_up;

	moveX = 0;
	moveY = 0;

	if(hInput != 0 || vInput != 0){
		dir = point_direction(0, 0, hInput, vInput);
		moveX = lengthdir_x(spd, dir);
		moveY = lengthdir_y(spd, dir);
		
		if(place_meeting(x+moveX, y, all) || tile_place_meeting(x+moveX, y, "tiles_wall")){
			moveX = 0;
		}
		if(place_meeting(x, y+moveY, all)|| tile_place_meeting(x, y+moveY, "tiles_wall")){
			moveY = 0;
		}
		
		x += moveX;
		y += moveY;
		
		dir = round(dir);
		
		switch(dir){
			case 0:
				image_index = 1;
			break;
			
			case 45:
				image_index = 2;
			break;
			
			case 90:
				image_index = 2;
			break;
			
			case 135:
				image_index = 2;
			break;
			
			case 180:
				image_index = 3;
			break;
			
			case 225:
				image_index = 0;
			break;
			
			case 270:
				image_index = 0;
			break;
			
			case 315:
				image_index = 0;
			break;
			
			default:
			
			break;
		}
	}
}
	
	
/*
//Works but can't look at an object when pressed up against it.
//Change sprite frame based on direction
if(moveY < 0){
	image_index = 2;
}
if(moveY > 0){       //Originally else
	image_index = 0;
}
if(moveX > 0){
	image_index = 1;
}
if(moveX < 0){
	image_index = 3;	
}

	x += moveX;
	y += moveY;
}
*/