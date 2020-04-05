/// @description Insert description here
// You can write your code in this editor
if(bed == true){
	switch(progress){
		case 1:	
			energy = 2;
			day++;
			progress++;
			bed = false;
			room_goto(rm_daytransition);
		break;
		
		case 2:
			energy = 3;
			day++;
			progress++;
			bed = false;
			room_goto(rm_daytransition);
		break;
		
		case 3:
			energy = 3;
			day++;
			progress++;
			mHealth--;
			pHealth--;
			sHealth--;
			bed = false;
			room_goto(rm_daytransition);
		break;
		
		case 4:
			energy = 1;
			day++;
			progress++;
			mHealth--;
			bed = false;
			room_goto(rm_daytransition);
		break;
		
		case 5:
			energy = 3;
			day++;
			progress++;
			bed = false;
			room_goto(rm_daytransition);
		break;
			
		default:
		
		break;
	}
}

if(mHealth <= 0 || pHealth <= 0 || sHealth <= 0){
	mHealth = 5;
	pHealth = 5;
	sHealth = 5;
	room_goto(rm_gameover);
}