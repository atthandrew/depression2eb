/// @description Insert description here
// You can write your code in this editor

if(!obj_game.paused){
	input_left = (keyboard_check(vk_left) || keyboard_check(ord("A")));
	input_right = (keyboard_check(vk_right) || keyboard_check(ord("D")));
	input_up = (keyboard_check(vk_up) || keyboard_check(ord("W")));
	input_down = (keyboard_check(vk_down) || keyboard_check(ord("S")));
	//input_interact = keyboard_check(vk_space);
	//input_pause = keyboard_check(ord("P"));

	moveX = 0;
	moveY = 0;

	moveY = (input_down - input_up) * spd;
	if(moveY == 0)
		moveX = (input_right - input_left) * spd;
	
	if(place_meeting(x+moveX, y, all) || tile_place_meeting(x+moveX, y, "tiles_wall")){
		moveX = 0;
	}

	if(place_meeting(x, y+moveY, all)|| tile_place_meeting(x, y+moveY, "tiles_wall")){
		moveY = 0;
	}

	x += moveX;
	y += moveY;
}