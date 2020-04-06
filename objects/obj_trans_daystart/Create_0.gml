event_inherited();

obj_game.paused = true;

textPos = 0;

if(obj_game.returning_home){
	//TODO: update x and y of player to coordinates in front of door
	
	obj_game.returning_home = false;
	myText[0] = "I'm back.";
}

else{
	switch(obj_game.progress){
		case 1: //Day 1: Tutorial
			if (obj_game.day == 0)
			{
				myText[0] = "Controls: Movement = wasd/arrow keys, Interact = Space, Pause = Esc/P";
				myText[1] = "Perform activities to alter your mental, phsycial, and social health stats.";
				myText[2] = "Each activity costs a certain amount of energy.";
				myText[3] = "Some activities can have bonus effects if done enough.";
				myText[4] = "Certain activities, such as showering, must be completed every so many days to avoid penalties.";
				myText[5] = "When you're ready to start the next day, go to bed.";
				myText[6] = "If a health stat reaches 0, your progress resets but the days keep going."
				
				myName = "Tutorial";
			}
			else
			{
				myText[0] = "You can do this! You just need to keep trying until you find something that works.";
				
				myName = "Trying Again";
			}
		break;
	
		case 2: //Day 2
			myText[0] = "You wake up feeling a little more worn down than usual. (E-)";
			
			myName = "You";
		break;
	
		case 3:
			myText[textPos] = "You seem to be feeling better today. Maybe you were imagining things.";
			if (obj_game.days_since_shower > 2)
			{
				textPos++;
				myText[textPos] = "It's been a while since you showered and the grime is starting to build up. (P- S-)";
			}
			textPos = 0;
			
			myName = "You";
		break;
		
		case 4:
			myText[textPos] = "The idea of having to leave your house and see other people today fills you with dread. (M- P- S-)";
			textPos++;
			myText[textPos] = "No outdoor activities are available today.";
			if (obj_game.days_since_shower > 2)
			{
				textPos++;
				myText[textPos] = "It's been a while since you showered and the grime is starting to build up. (P- S-)";
			}
			if (obj_game.days_since_work > 3)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any work and your boss isn't very happy. (M- P-)";
			}
			textPos = 0;
			
			myName = "You";
		break;
		
		case 5:
			myText[textPos] = "It took a lot of willpower to get out of bed today. (E-- M-)";
			if (obj_game.days_since_shower > 2)
			{
				textPos++;
				myText[textPos] = "It's been a while since you showered and the grime is starting to build up. (P- S-)";
			}
			if (obj_game.days_since_work > 3)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any work and your boss isn't very happy. (M- P-)";
			}
			textPos = 0;
			
			myName = "You";
		break;
		
		case 6:
			myText[textPos] = "You wake up a few minutes before your alarm feeling refreshed.";
			if (obj_game.days_since_shower > 2)
			{
				textPos++;
				myText[textPos] = "It's been a while since you showered and the grime is starting to build up. (P- S-)";
			}
			if (obj_game.days_since_work > 3)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any work and your boss isn't very happy. (M- P-)";
			}
			if (obj_game.days_since_laundry > 5)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any laundry and your clothes are starting to stink. (M- S-)";
			}
		break;
	
		default:
	
		break;
	}
}

myName = "You";