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
				myText[0] = "Controls: Movement = wasd/arrow keys, Interact = Space, Map Interact = Mouse, Pause = Esc/P";
				myText[1] = "Perform activities to alter your mental, physical, and social health stats.";
				myText[2] = "The maximum for any given health stat is 10.";
				myText[3] = "If a health stat reaches 0, your progress resets but the days keep going."
				myText[4] = "Activities will glow when you are close enough to interact with them. (Currently only working on finished assets.)";
				myText[5] = "Each activity costs a certain amount of energy.";
				myText[6] = "Pause at any point to view your energy and stats.";
				myText[7] = "When you're ready to start the next day, go to bed.";
				
				myName = "Tutorial";
			}
			else
			{
				myText[0] = "You can do this! You just need to keep trying until you find something that works.";
				
				myName = "Trying Again";
			}
		break;
	
		case 2: //Day 2
			myText[textPos] = "You wake up feeling a little more worn down than usual. (E-)";
			if(obj_game.day == 1)
			{
				textPos++;
				myText[textPos] = "Some activities can have bonus effects if done enough.";
				textPos++;
				myText[textPos] = "Certain activities, such as showering, must be completed every so many days to avoid penalties.";
			}
			
			myName = "You";
		break;
	
		case 3:
			myText[textPos] = "You seem to be feeling better today. Maybe you were imagining things.";
			if(obj_game.day == 2)
			{
				textPos++;
				myText[textPos] = "Interacting with the front door will pull up a map with activities you can perform outside your home.";
				textPos++;
				myText[textPos] = "Click on the stars at each location to start these outdoor activities.";
				textPos++;
				myText[textPos] = "Simply click on your home in the bottom left when you're ready to go back home.";
			}
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
			myText[textPos] = "You woke up a few minutes before your alarm feeling refreshed. (P+)";
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
			textPos = 0;
			
			myName = "You";
		break;
		
		case 7:
			myText[textPos] = "You felt better yesterday, but you're starting to worry there is a pattern here. (M-- S-)";
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
			textPos = 0;
			
			myName = "You";
		break;
		
		case 8:
			myText[textPos] = "You feel as though an invisible force is weighing you down, so heavy you can barely move. (E-- M-- P-- S--)";
			textPos++;
			myText[textPos] = "You can't bring yourself to so much as leave your room today, and you certainly can't work.";
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
			textPos = 0;
			
			myName = "You";
		break;
		
		case 9:
			myText[textPos] = "Yesterday was really rough. You're still a little worn out from it. Maybe you need help. (E-)";
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
			textPos = 0;
			
			myName = "You";
		break;
		
		case 10:
			myText[textPos] = "You opened up to a friend about how you've been struggling. It took some explaining, but they were really understanding. (S+)";
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
			textPos = 0;
			
			myName = "You";
		break;
		
		case 11:
			myText[textPos] = "After further discussion with your friend, you've decided to seek professional help. (M+ P+ S+)";
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
			textPos = 0;
			
			myName = "You";
		break;
		
		case 12:
			myText[textPos] = "It still takes effort, but things certainly seem to have gotten easier after opening up and getting proper help.";
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
			textPos = 0;
			
			myName = "You";
		break;
			
		default:
	
		break;
	}
}

myName = "You";