event_inherited();

obj_game.paused = true;

textPos = 0;

//day4stats = false;

if(obj_game.returning_home){
	//TODO: update x and y of player to coordinates in front of door
	
	obj_game.returning_home = false;
	myText[0] = "I'm back.";
	myTextbox.name = "You";
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
				myText[6] = "Some activities have bonuses if you do them enough.";
				myText[7] = "Leaving the house will pull up the map. Use the mouse to interact with it.";
				myText[8] = "When you're ready to start the next day, go to bed.";
				myText[9] = "Survive so many days to reach the end.";
				
				myTextbox.name = "Tutorial";
			}
			else
			{
				myText[0] = "You can do this! You just need to keep trying until you find something that works.";
				
				myTextbox.name = "Trying Again";
			}
		break;
	
		case 2: //Day 2
			myText[textPos] = "You wake up feeling a little more worn down than usual.";
			myTextbox.redText[textPos] = "E-";
			myTextbox.greenText[textPos] = "";
			audio_play_sound(snd_stat_down, 100, false);
			textPos++;
			myText[textPos] = "On certain days the fridge will be restocked. Interacting with the fridge when its stocked will replenish 1 energy.";
			myTextbox.name = "You";
		break;
	
		case 3:
			myText[textPos] = "You seem to be feeling better today. Maybe you were imagining things.";
			myTextbox.name = "You";
		break;
		
		case 4:
			myText[textPos] = "The idea of having to leave your house and see other people today fills you with dread.";
			myTextbox.redText[textPos] = "M- P- S-";
			myTextbox.greenText[textPos] = "";
			audio_play_sound(snd_stat_down, 100, false);
			textPos++;
			myText[textPos] = "No outdoor activities are available today.";
			myTextbox.name = "You";
		break;
		
		case 5:
			myText[textPos] = "It took a lot of willpower to get out of bed today.";
			myTextbox.redText[textPos] = "E-- M-";
			myTextbox.greenText[textPos] = "";
			audio_play_sound(snd_stat_down, 100, false);
			myTextbox.name = "You";
		break;
		
		case 6:
			myText[textPos] = "You woke up a few minutes before your alarm feeling refreshed.";
			myTextbox.greenText[textPos] = "P+ ";
			myTextbox.redText[textPos] = "";
			audio_play_sound(snd_stat_up, 100, false);
			myTextbox.name = "You";
		break;
		
		case 7:
			myText[textPos] = "You felt better yesterday, but you're starting to worry there is a pattern here.";
			myTextbox.redText[textPos] = "M-- S-";
			myTextbox.greenText[textPos] = "";
			audio_play_sound(snd_stat_down, 100, false);
			myTextbox.name = "You";
		break;
		
		case 8:
			myText[textPos] = "You feel as though an invisible force is weighing you down, so heavy you can barely move.";
			myTextbox.redText[textPos] = "E-- M-- P-- S--";
			myTextbox.greenText[textPos] = "";
			audio_play_sound(snd_stat_down, 100, false);
			textPos++;
			myText[textPos] = "You can't bring yourself to so much as leave your room today, and you certainly can't work.";
			myTextbox.name = "You";
		break;
		
		case 9:
			myText[textPos] = "Yesterday was really rough. You're still a little worn out from it. Maybe you need help.";
			myTextbox.redText[textPos] = "E-";
			myTextbox.greenText[textPos] = "";
			audio_play_sound(snd_stat_down, 100, false);
			myTextbox.name = "You";
		break;
		
		case 10:
			myText[textPos] = "You opened up to a friend about how you've been struggling. It took some explaining, but they were really understanding.";
			myTextbox.greenText[textPos] = "S+ ";
			myTextbox.redText[textPos] = "";
			audio_play_sound(snd_stat_up, 100, false);
			myTextbox.name = "You";
		break;
		
		case 11:
			myText[textPos] = "After further discussion with your friend, you've decided to seek professional help.";
			myTextbox.greenText[textPos] = "M+ P+ S+ ";
			myTextbox.redText[textPos] = "";
			audio_play_sound(snd_stat_up, 100, false);
			myTextbox.name = "You";
		break;
		
		case 12:
			myText[textPos] = "It still takes effort, but things certainly seem to have gotten easier after opening up and getting proper help.";
			myTextbox.name = "You";
		break;
			
		default:
	
		break;
	}
	
	if (obj_game.days_since_shower > 2 && obj_game.progress != 1)
	{
		textPos++;
		myText[textPos] = "It's been a while since you showered and the grime is starting to build up.";
		myTextbox.redText[textPos] = "P- S-";
		myTextbox.greenText[textPos] = "";
		if(!audio_is_playing(snd_stat_down))
		{
			audio_play_sound(snd_stat_down, 100, false);
		}
	}
	if (obj_game.days_since_work > 3 && obj_game.progress != 1)
	{
		textPos++;
		myText[textPos] = "It's been a while since you did any work and your boss isn't very happy.";
		myTextbox.redText[textPos] = "M- P-";
		myTextbox.greenText[textPos] = "";
		if(!audio_is_playing(snd_stat_down))
		{
			audio_play_sound(snd_stat_down, 100, false);
		}
	}
	if (obj_game.days_since_cooking > 4 && obj_game.progress != 1)
	{
		textPos++;
		myText[textPos] = "It's been a while since you cooked anything and the takeout bill is starting to build up.";
		myTextbox.redText[textPos] = "M- P-";
		myTextbox.greenText[textPos] = "";
		if(!audio_is_playing(snd_stat_down))
		{
			audio_play_sound(snd_stat_down, 100, false);
		}
	}
	if (obj_game.days_since_laundry > 5 && obj_game.progress != 1)
	{
		textPos++;
		myText[textPos] = "It's been a while since you did any laundry and your clothes are starting to stink.";
		myTextbox.redText[textPos] = "M- S-";
		myTextbox.greenText[textPos] = "";
		if(!audio_is_playing(snd_stat_down))
		{
			audio_play_sound(snd_stat_down, 100, false);
		}
	}
	if (obj_game.days_since_cleaning > 6 && obj_game.progress != 1)
	{
		textPos++;
		myText[textPos] = "It's been a while since you cleaned the house and the garbage is starting to form factions.";
		myTextbox.redText[textPos] = "M- S-";
		myTextbox.greenText[textPos] = "";
		if(!audio_is_playing(snd_stat_down))
		{
			audio_play_sound(snd_stat_down, 100, false);
		}
	}
	
}

textPos = 0;
