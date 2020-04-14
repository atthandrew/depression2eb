event_inherited();

obj_game.paused = true;

textPos = 0;
//day4stats = false;

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
				myText[0] = "Controls: Movement = wasd/arrow keys, Interact/Advance Textbox = Space, Choices = 123, Map Interact = Mouse, Pause = Esc/P";
				myText[1] = "Perform activities to alter your mental, physical, and social health stats.";
				myText[2] = "The maximum for any given health stat is 10.";
				myText[3] = "If a health stat reaches 0, your progress resets but the days keep going."
				myText[4] = "Activities will glow when you are close enough to interact with them.";
				myText[5] = "Each activity costs a certain amount of energy.";
				myText[6] = "When you're ready to start the next day, go to bed.";
				myText[7] = "Survive so many days to reach the end.";
				
				myName = "Tutorial";
			}
			else
			{
				myText[0] = "You can do this! You just need to keep trying until you find something that works.";
				
				myName = "Trying Again";
			}
		break;
	
		case 2: //Day 2
			myText[textPos] = "You wake up feeling a little more worn down than usual.";
			if(obj_game.day == 1)
			{
				textPos++;
				myText[textPos] = "Some activities can have bonus effects if done enough.";
				textPos++;
				myText[textPos] = "Certain activities, such as showering, must be completed every so many days to avoid penalties.";
			}
			
			if(myText == "You wake up feeling a little more worn down than usual.")
			{
				myTextbox.redText = "E-";
			}
			else
			{
				myTextbox.redText = "";
			}
			
			textPos = 0;
			
			
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
				myText[textPos] = "It's been a while since you showered and the grime is starting to build up.";
			}
			
			if (myText == "It's been a while since you showered and the grime is starting to build up.")
			{
				myTextbox.redText = "P- S-";
			}
			else
			{
				myTextbox.redText = "";
			}
			
			textPos = 0;
			
			myName = "You";
		break;
		
		case 4:
			myText[textPos] = "The idea of having to leave your house and see other people today fills you with dread.";
			textPos++;
			myText[textPos] = "No outdoor activities are available today.";
			if (obj_game.days_since_shower > 2)
			{
				textPos++;
				myText[textPos] = "It's been a while since you showered and the grime is starting to build up."
			}
			if (obj_game.days_since_work > 3)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any work and your boss isn't very happy.";
			}
			
			if (myText == "The idea of having to leave your house and see other people today fills you with dread.")
			{
				myTextbox.redText = "M- P- S-";
			}
			if (myText == "It's been a while since you showered and the grime is starting to build up.")
			{
				myTextbox.redText = "P- S-";
			}
			if (myText == "It's been a while since you did any work and your boss isn't very happy.")
			{
				myTextbox.redText = "M- P-";
			}
			else
			{
				myTextbox.redText = "";
			}
			
			textPos = 0;
			
			myName = "You";
		break;
		
		case 5:
			myText[textPos] = "It took a lot of willpower to get out of bed today.";
			myTextbox.redText = "E-- M-";
			if (obj_game.days_since_shower > 2)
			{
				textPos++;
				myText[textPos] = "It's been a while since you showered and the grime is starting to build up.";
				myTextbox.redText = "P- S-";
			}
			if (obj_game.days_since_work > 3)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any work and your boss isn't very happy."
				myTextbox.redText = "M- P-";
			}
			textPos = 0;
			
			myName = "You";
		break;
		
		case 6:
			myText[textPos] = "You woke up a few minutes before your alarm feeling refreshed.";
			myTextbox.greenText = "P+";
			if (obj_game.days_since_shower > 2)
			{
				textPos++;
				myText[textPos] = "It's been a while since you showered and the grime is starting to build up.";
				myTextbox.greenText = "";
				myTextbox.redText = "P- S-";
			}
			if (obj_game.days_since_work > 3)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any work and your boss isn't very happy.";
				myTextbox.greenText = "";
				myTextbox.redText = "M- P-";
			}
			if (obj_game.days_since_laundry > 5)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any laundry and your clothes are starting to stink.";
				myTextbox.greenText = "";
				myTextbox.redText = "M- S-";
			}
			textPos = 0;
			
			myName = "You";
		break;
		
		case 7:
			myText[textPos] = "You felt better yesterday, but you're starting to worry there is a pattern here.";
			myTextbox.redText = "M-- S-";
			if (obj_game.days_since_shower > 2)
			{
				textPos++;
				myText[textPos] = "It's been a while since you showered and the grime is starting to build up.";
				myTextbox.redText = "P- S-";
			}
			if (obj_game.days_since_work > 3)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any work and your boss isn't very happy.";
				myTextbox.redText = "M- P-";
			}
			if (obj_game.days_since_laundry > 5)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any laundry and your clothes are starting to stink.";
				myTextbox.redText = "M- S-";
			}
			textPos = 0;
			
			myName = "You";
		break;
		
		case 8:
			myText[textPos] = "You feel as though an invisible force is weighing you down, so heavy you can barely move.";
			myTextbox.redText = "E-- M-- P-- S--";
			textPos++;
			myText[textPos] = "You can't bring yourself to so much as leave your room today, and you certainly can't work.";
			myTextbox.redText = "";
			if (obj_game.days_since_shower > 2)
			{
				textPos++;
				myText[textPos] = "It's been a while since you showered and the grime is starting to build up.";
				myTextbox.redText = "P- S-";
			}
			if (obj_game.days_since_work > 3)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any work and your boss isn't very happy.";
				myTextbox.redText = "M- P-";
			}
			if (obj_game.days_since_laundry > 5)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any laundry and your clothes are starting to stink.";
				myTextbox.redText = "M- S-";
			}
			textPos = 0;
			
			myName = "You";
		break;
		
		case 9:
			myText[textPos] = "Yesterday was really rough. You're still a little worn out from it. Maybe you need help.";
			myTextbox.redText = "E-";
			if (obj_game.days_since_shower > 2)
			{
				textPos++;
				myText[textPos] = "It's been a while since you showered and the grime is starting to build up.";
				myTextbox.redText = "P- S-";
			}
			if (obj_game.days_since_work > 3)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any work and your boss isn't very happy.";
				myTextbox.redText = "M- P-";
			}
			if (obj_game.days_since_laundry > 5)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any laundry and your clothes are starting to stink.";
				myTextbox.redText = "M- S-";
			}
			textPos = 0;
			
			myName = "You";
		break;
		
		case 10:
			myText[textPos] = "You opened up to a friend about how you've been struggling. It took some explaining, but they were really understanding.";
			myTextbox.greenText = "S+";
			if (obj_game.days_since_shower > 2)
			{
				textPos++;
				myText[textPos] = "It's been a while since you showered and the grime is starting to build up.";
				myTextbox.greenText = "";
				myTextbox.redText = "P- S-";
			}
			if (obj_game.days_since_work > 3)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any work and your boss isn't very happy.";
				myTextbox.greenText = "";
				myTextbox.redText = "M- P-";
			}
			if (obj_game.days_since_laundry > 5)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any laundry and your clothes are starting to stink.";
				myTextbox.greenText = "";
				myTextbox.redText = "M- S-";
			}
			textPos = 0;
			
			myName = "You";
		break;
		
		case 11:
			myText[textPos] = "After further discussion with your friend, you've decided to seek professional help.";
			myTextbox.greenText = "M+ P+ S+";
			if (obj_game.days_since_shower > 2)
			{
				textPos++;
				myText[textPos] = "It's been a while since you showered and the grime is starting to build up.";
				myTextbox.greenText = "";
				myTextbox.redText = "P- S-";
			}
			if (obj_game.days_since_work > 3)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any work and your boss isn't very happy.";
				myTextbox.greenText = "";
				myTextbox.redText = "M- P-";
			}
			if (obj_game.days_since_laundry > 5)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any laundry and your clothes are starting to stink.";
				myTextbox.greenText = "";
				myTextbox.redText = "M- S-";
			}
			textPos = 0;
			
			myName = "You";
		break;
		
		case 12:
			myText[textPos] = "It still takes effort, but things certainly seem to have gotten easier after opening up and getting proper help.";
			if (obj_game.days_since_shower > 2)
			{
				textPos++;
				myText[textPos] = "It's been a while since you showered and the grime is starting to build up.";
				myTextbox.redText = "P- S-";
			}
			if (obj_game.days_since_work > 3)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any work and your boss isn't very happy.";
				myTextbox.redText = "M- P-";
			}
			if (obj_game.days_since_laundry > 5)
			{
				textPos++;
				myText[textPos] = "It's been a while since you did any laundry and your clothes are starting to stink.";
				myTextbox.redText = "M- S-";
			}
			textPos = 0;
			
			myName = "You";
		break;
			
		default:
	
		break;
	}
}

myName = "You";