obj_game.days_since_shower++;

if(obj_game.days_since_shower > 2){
	obj_game.pHealth--;	
	obj_game.sHealth--;
}

obj_game.days_since_work++;

if(obj_game.days_since_work > 3)
{
	obj_game.pHealth--;
	obj_game.mHealth--;
}

obj_game.days_since_cooking++;

if(obj_game.days_since_cooking > 4)
{
	obj_game.mHealth--;
	obj_game.pHealth--;
}

obj_game.days_since_laundry++;

if(obj_game.days_since_laundry > 5)
{
	obj_game.mHealth--;
	obj_game.sHealth--;
}

obj_game.days_since_cleaning++;

if(obj_game.days_since_cleaning > 6)
{
	obj_game.mHealth--;
	obj_game.sHealth--;
}