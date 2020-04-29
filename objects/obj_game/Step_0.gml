/// @description Insert description here
// You can write your code in this editor
if(bed){
	switch(progress){
		case 1:	
			energy = 2;
			day++;
			progress++;
			room_goto(rm_daytransition);
			//warning_given = false;
			bed = false;
		break;
		
		case 2:
			energy = 3;
			day++;
			progress++;
			snackAdded = false;
			room_goto(rm_daytransition);
			//warning_given = false;
			bed = false;
		break;
		
		case 3:
			energy = 3;
			day++;
			progress++;
			mHealth--;
			pHealth--;
			sHealth--;
			room_goto(rm_daytransition);
			//warning_given = false;
			bed = false;
		break;
		
		case 4:
			energy = 1;
			day++;
			progress++;
			mHealth--;
			room_goto(rm_daytransition);
			//warning_given = false;
			bed = false;
		break;
		
		case 5:
			energy = 3;
			day++;
			progress++;
			pHealth++;
			room_goto(rm_daytransition);
			//warning_given = false;
			bed = false;
		break;
		
		case 6:
			energy = 3;
			day++;
			progress++;
			mHealth = mHealth - 2;
			sHealth--;
			room_goto(rm_daytransition);
			//warning_given = false;
			bed = false;
		break;
		
		case 7:
			energy = 1;
			day++;
			progress++;
			mHealth = mHealth - 2;
			pHealth = pHealth - 2;
			sHealth = sHealth - 2;
			room_goto(rm_daytransition);
			//warning_given = false;
			bed = false;
		break;
		
		case 8:
			energy = 2;
			day++;
			progress++;
			room_goto(rm_daytransition);
			//warning_given = false;
			bed = false;
		break;
		
		case 9:
			energy = 3;
			day++;
			progress++;
			sHealth++;
			snackAdded = false;
			room_goto(rm_daytransition);
			//warning_given = false;
			bed = false;
		break;
		
		case 10:
			energy = 3;
			day++;
			progress++;
			mHealth++;
			pHealth++;
			sHealth++;
			room_goto(rm_daytransition);
			//warning_given = false;
			bed = false;
		break;
		
		case 11:
			energy = 3;
			day++;
			progress++;
			room_goto(rm_daytransition);
			//warning_given = false;
			bed = false;
		break;
		
		case 12:
			progress++;
			room_goto(rm_end);
			
		default:
		
		break;
	}
}

if((mHealth <= 0 || pHealth <= 0 || sHealth <= 0) && (room == rm_house && !instance_exists(obj_textbox))){
	room_goto(rm_gameover);
	mHealth = 5;
	pHealth = 5;
	sHealth = 5;
}

if(mHealth > 10)
{
	mHealth = 10;
}
if(mHealth < 0)
{
	mHealth = 0;
}
if(pHealth > 10)
{
	pHealth = 10;
}
if(pHealth < 0)
{
	pHealth = 0;
}
if(sHealth > 10)
{
	sHealth = 10;
}
if(sHealth < 0)
{
	sHealth = 0;
}

//Play menu audio
if((room == rm_mainmenu || room == rm_daytransition) && !audio_is_playing(MenuMusic))
{
	audio_play_sound(MenuMusic, 100, true);
	audio_sound_gain(MenuMusic, 1, 1000);
}
if(room != rm_mainmenu && room != rm_daytransition)
{
	audio_sound_gain(MenuMusic, 0, 1000);
}
if (audio_sound_get_gain(MenuMusic) == 0)
{
	audio_stop_sound(MenuMusic);
}

//Set the saturation strengt
if (day == 0)
{
	desat_strength = 0;
}
else if (progress == 8)
{
	desat_strength = 0.9;
}
else if (progress == 12)
{
	desat_strength = 0;
}
else
{
	var min_stat = min(mHealth, pHealth, sHealth);
	desat_strength = 1 - min_stat / 10;
}

//Activity bonuses
if (gameComplete == 0)
{
	gameComplete = irandom_range(4, 8);
}

if (workComplete == 0)
{
	workComplete = irandom_range(3, 5);
}

if (practiceComplete == 0)
{
	practiceComplete = irandom_range(5, 8);
}

if (showComplete == 0)
{
	showComplete = irandom_range(1, 5);
}

if (songsComplete == 0)
{
	songsComplete = irandom_range(1, 3);
}

if (readComplete == 0)
{
	readComplete = irandom_range(2, 3);
}

if (recipeComplete == 0)
{
	recipeComplete = irandom_range(2, 3);
}

if (paintComplete == 0)
{
	paintComplete = irandom_range(1, 2);
}

if((obj_game.progress == 2 || obj_game.progress == 9) && !snackAdded)
{
	snackAmount++;
	snackAdded = true;
}