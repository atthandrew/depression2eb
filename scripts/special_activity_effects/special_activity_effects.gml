obj_game.days_since_shower++;

if(obj_game.days_since_shower > 2){
	obj_game.pHealth--;	
	obj_game.sHealth--;
}

obj_game.days_since_work++;

if(obj_game.days_since_shower > 3)
{
	obj_game.pHealth--;
	obj_game.mHealth--;
}