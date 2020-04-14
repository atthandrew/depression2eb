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
	//room_goto(rm_gameover);
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