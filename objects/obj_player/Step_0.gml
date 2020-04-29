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
		image_xscale = 1;
		
		switch(dir){
			case 0:
				sprite_index = spr_player_side;
				default_index = 0;
			break;
			
			case 45:
				sprite_index = spr_player_back;
				default_index = 7;
			break;
			
			case 90:
				sprite_index = spr_player_back;
				default_index = 7;
			break;
			
			case 135:
				sprite_index = spr_player_back;
				default_index = 7;
			break;
			
			case 180:
				sprite_index = spr_player_side;
				image_xscale = -1;
				default_index = 0;
			break;
			
			case 225:
				sprite_index = spr_player_front;
				default_index = 7;
			break;
			
			case 270:
				sprite_index = spr_player_front;
				default_index = 7;
			break;
			
			case 315:
				sprite_index = spr_player_front;
				default_index = 7;
			break;
			
			default:
			
			break;
		}
	}
	else{
		image_index = default_index;
	}
}
else{
	image_index = default_index;
}