event_inherited();

obj_game.paused = true;

switch(obj_game.progress){
	case 1: //Day 1: Tutorial
		myText[0] = "Controls: Movement = wasd/arrow keys, Interact = Space, Pause = P";
		myText[1] = "Perform activities to alter your mental, phsycial, and social health stats.";
		myText[2] = "Each activity costs a certain amount of energy.";
		myText[3] = "Some activities can have bonus effects if done enough.";
		myText[4] = "Certain activities, such as showering, must be completed every so many days to avoid penalties.";
		myText[5] = "When you're ready to start the next day, go to bed.";
		myText[6] = "If a health stat reaches 0, your progress resets but the days keep going."
		
		myName = "Tutorial";
	break;
	
	case 2: //Day 2
		myText[0] = "Let's keep going.";
		myName = "You";
	break;
	
	default:
	
	break;
}

myName = "You";