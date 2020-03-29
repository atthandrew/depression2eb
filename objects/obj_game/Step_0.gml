/// @description Insert description here
// You can write your code in this editor
if(energy == 0){
	switch(progress){
		case 1:	
			energy = 3;
			mHealth = 5;
			pHealth = 5;
			sHealth = 5;
			day++;
			progress++;
			room_goto(rm_day1to2);
		break;
		
		case 2:
			day++;
			progress++;
			room_goto(rm_end);
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