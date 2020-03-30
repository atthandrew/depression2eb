event_inherited();

obj_game.paused = true;

switch(obj_game.progress){
	case 1: //Day 1: Tutorial
		myText[0] = "Controls: Movement = arrow keys, Interact = Space, Pause = P";
		myText[1] = "Perform activities to raise your health stats. When energy is depleted, move to next day.";
		myText[2] = "If a health stat reaches 0, game over."
		
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