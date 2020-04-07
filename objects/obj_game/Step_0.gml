/// @description Insert description here
// You can write your code in this editor
if(bed){
	switch(progress){
		case 1:	
			room_goto(rm_daytransition);
			energy = 2;
			day++;
			progress++;
			//warning_given = false;
			bed = false;
		break;
		
		case 2:
			room_goto(rm_daytransition);
			energy = 3;
			day++;
			progress++;
			//warning_given = false;
			bed = false;
		break;
		
		case 3:
			room_goto(rm_daytransition);
			energy = 3;
			day++;
			progress++;
			mHealth--;
			pHealth--;
			sHealth--;
			//warning_given = false;
			bed = false;
		break;
		
		case 4:
			room_goto(rm_daytransition);
			energy = 1;
			day++;
			progress++;
			mHealth--;
			//warning_given = false;
			bed = false;
		break;
		
		case 5:
			room_goto(rm_daytransition);
			energy = 3;
			day++;
			progress++;
			pHealth++;
			//warning_given = false;
			bed = false;
		break;
		
		case 6:
			room_goto(rm_daytransition);
			energy = 3;
			day++;
			progress++;
			mHealth = mHealth - 2;
			sHealth--;
			//warning_given = false;
			bed = false;
		break;
		
		case 7:
			room_goto(rm_daytransition);
			energy = 1;
			day++;
			progress++;
			mHealth = mHealth - 2;
			pHealth = pHealth - 2;
			sHealth = sHealth - 2;
			//warning_given = false;
			bed = false;
		break;
		
		case 8:
			room_goto(rm_daytransition);
			energy = 2;
			day++;
			progress++;
			//warning_given = false;
			bed = false;
		break;
		
		case 9:
			room_goto(rm_daytransition);
			energy = 3;
			day++;
			progress++;
			sHealth++;
			//warning_given = false;
			bed = false;
		break;
		
		case 10:
			room_goto(rm_daytransition);
			energy = 3;
			day++;
			progress++;
			mHealth++;
			pHealth++;
			sHealth++;
			//warning_given = false;
			bed = false;
		break;
		
		case 11:
			room_goto(rm_daytransition);
			energy = 3;
			day++;
			progress++;
			//warning_given = false;
			bed = false;
		break;
		
		case 12:
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
if(pHealth > 10)
{
	pHealth = 10;
}
if(sHealth > 10)
{
	sHealth = 10;
}