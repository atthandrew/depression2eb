event_inherited();

if(obj_fade.fadeout == true){
	exit;
}

//Handle user input from the textbox for certain pages
myTextbox.name = "You";

if (obj_game.progress == 3)
{
	myText[0] = "You seemed a little run down today. Is everything alright?\n  1 - That's pretty normal.\n  2 - I'm sure it's nothing to worry about.\n  3 - Nothing I can do about it.";
	if(myTextbox.page == 0)
	{
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			myText[1] = "Is it normal or are you just used to feeling worse?";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
		if(keyboard_check_pressed(ord("2")))
		{
			myText[1] = "Do you actually believe that or are you just afraid of the alternative?";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
		if(keyboard_check_pressed(ord("3")))
		{
			myText[1] = "Is there really nothing you can do or are you just afraid to do it?";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
	myText[2] = "Continue to the next day?\n  1 to accept\n  2 to reject";
	if(myTextbox.page == 2)
	{
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			awaitinput = false;
			special_activity_effects();
			instance_destroy(myTextbox);
			obj_fade.fadein = false;
			obj_fade.fadeout = true;
			//room_goto(rm_house); <- done in obj_fade
		}
	
		if(keyboard_check_pressed(ord("2")))
		{
			awaitinput = false;
		
			instance_destroy(myTextbox);
		
			//reset variables
			obj_game.progress = 1;
			obj_game.day = 0;
			obj_game.energy = 3;
			obj_game.mHealth = 5;
			obj_game.pHealth = 5;
			obj_game.sHealth = 5;
			obj_game.days_since_shower = 1;
			obj_game.days_since_work = 1;
			obj_game.days_since_cooking = 1;
			obj_game.days_since_laundry = 1;
			obj_game.days_since_cleaning = 1;
		
			//recreate main menu buttons
			room_goto(rm_mainmenu);
		}
	}
}

else if (obj_game.progress == 5)
{
	myText[0] = "You seemed to be struggling today. How often do you find yourself unable to find the motivation to perform otherwise normal tasks?\n  1 - Only occasionally.\n  2 - Not often enough to worry about it.\n  3 - Pretty frequently.";
	if(myTextbox.page == 0)
	{
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			myText[1] = "Wouldn't you still help a friend with a problem even if it only came up infrequently?";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
		if(keyboard_check_pressed(ord("2")))
		{
			myText[1] = "How much does your life have to be negatively impacted before you'll start seeking a solution?";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
		if(keyboard_check_pressed(ord("3")))
		{
			myText[1] = "Have you thought about doing anything to improve the situation?";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
	myText[2] = "Continue to the next day?\n  1 to accept\n  2 to reject";
	if(myTextbox.page == 2)
	{
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			awaitinput = false;
			special_activity_effects();
			instance_destroy(myTextbox);
			obj_fade.fadein = false;
			obj_fade.fadeout = true;
			//room_goto(rm_house); <- done in obj_fade
		}
	
		if(keyboard_check_pressed(ord("2")))
		{
			awaitinput = false;
		
			instance_destroy(myTextbox);
		
			//reset variables
			obj_game.progress = 1;
			obj_game.day = 0;
			obj_game.energy = 3;
			obj_game.mHealth = 5;
			obj_game.pHealth = 5;
			obj_game.sHealth = 5;
			obj_game.days_since_shower = 1;
			obj_game.days_since_work = 1;
			obj_game.days_since_cooking = 1;
			obj_game.days_since_laundry = 1;
			obj_game.days_since_cleaning = 1;
		
			//recreate main menu buttons
			room_goto(rm_mainmenu);
		}
	}
}

else if (obj_game.progress == 7)
{
	myText[0] = "Today seemed a bit better. How often does there have to be bad days for you to consider it a problem?\n  1 - Depends on how bad the days are.\n  2 - Depends on how much my responsibilites are impacted.\n  3 - Almost constantly.";
	if(myTextbox.page == 0)
	{
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			myText[1] = "Even if it isn't as bad as it could be, isn't it still worth trying to make it better?";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
		if(keyboard_check_pressed(ord("2")))
		{
			myText[1] = "Don't you deserve to be happy regardless of how functional you remain?";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
		if(keyboard_check_pressed(ord("3")))
		{
			myText[1] = "Why isn't something that is negatively impacting your life worth fixing, regardless of frequency?";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
	myText[2] = "Continue to the next day?\n  1 to accept\n  2 to reject";
	if(myTextbox.page == 2)
	{
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			awaitinput = false;
			special_activity_effects();
			instance_destroy(myTextbox);
			obj_fade.fadein = false;
			obj_fade.fadeout = true;
			//room_goto(rm_house); <- done in obj_fade
		}
	
		if(keyboard_check_pressed(ord("2")))
		{
			awaitinput = false;
		
			instance_destroy(myTextbox);
		
			//reset variables
			obj_game.progress = 1;
			obj_game.day = 0;
			obj_game.energy = 3;
			obj_game.mHealth = 5;
			obj_game.pHealth = 5;
			obj_game.sHealth = 5;
			obj_game.days_since_shower = 1;
			obj_game.days_since_work = 1;
			obj_game.days_since_cooking = 1;
			obj_game.days_since_laundry = 1;
			obj_game.days_since_cleaning = 1;
		
			//recreate main menu buttons
			room_goto(rm_mainmenu);
		}
	}
}

else if (obj_game.progress == 9)
{
	myText[0] = "I'm sorry today was so awful. I promise it will get better. Have you considered seeking treatment?\n  1 - I've never thought about it, but I don't think it's bad enough to go that far. Some people have it worse.\n  2 - I don't have the kind of resources to seek treatment.\n  3 - I've tried before and it didn't work. This is just the way I am.";
	if(myTextbox.page == 0)
	{
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			myText[1] = "Suffering isn't a competition. If you could be happier, don't you deserve to give yourself that chance?";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
		if(keyboard_check_pressed(ord("2")))
		{
			myText[1] = "There are different options for different circumstances. Even developing a solid support network can help work wonders.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
		if(keyboard_check_pressed(ord("3")))
		{
			myText[1] = "Different treatments work for different people. Don't you deserve to keep trying to give yourself the chance to find something that works?";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
	myText[2] = "Continue to the next day?\n  1 to accept\n  2 to reject";
	if(myTextbox.page == 2)
	{
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			awaitinput = false;
			special_activity_effects();
			instance_destroy(myTextbox);
			obj_fade.fadein = false;
			obj_fade.fadeout = true;
			//room_goto(rm_house); <- done in obj_fade
		}
	
		if(keyboard_check_pressed(ord("2")))
		{
			awaitinput = false;
		
			instance_destroy(myTextbox);
		
			//reset variables
			obj_game.progress = 1;
			obj_game.day = 0;
			obj_game.energy = 3;
			obj_game.mHealth = 5;
			obj_game.pHealth = 5;
			obj_game.sHealth = 5;
			obj_game.days_since_shower = 1;
			obj_game.days_since_work = 1;
			obj_game.days_since_cooking = 1;
			obj_game.days_since_laundry = 1;
			obj_game.days_since_cleaning = 1;
		
			//recreate main menu buttons
			room_goto(rm_mainmenu);
		}
	}
}

else if (obj_game.progress == 10)
{
	myText[0] = "Today still seemed a little tough. How are you doing?\n  1 - I'm okay, just a little run down.\n  2 - I'm not doing so great...\n  3 - I'm used to it at this point.";
	if(myTextbox.page == 0)
	{
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			myText[1] = "It's alright to feel down sometimes, just so long as you stay conscious of it.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
		if(keyboard_check_pressed(ord("2")))
		{
			myText[1] = "I know things are hard right now, and that sucks. But I also know that if you keep trying, things will improve.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
		if(keyboard_check_pressed(ord("3")))
		{
			myText[1] = "Just because you're struggling doesn't mean it has to stay that way. Keep trying and things will get better.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
	myText[2] = "Continue to the next day?\n  1 to accept\n  2 to reject";
	if(myTextbox.page == 2)
	{
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			awaitinput = false;
			special_activity_effects();
			instance_destroy(myTextbox);
			obj_fade.fadein = false;
			obj_fade.fadeout = true;
			//room_goto(rm_house); <- done in obj_fade
		}
	
		if(keyboard_check_pressed(ord("2")))
		{
			awaitinput = false;
		
			instance_destroy(myTextbox);
		
			//reset variables
			obj_game.progress = 1;
			obj_game.day = 0;
			obj_game.energy = 3;
			obj_game.mHealth = 5;
			obj_game.pHealth = 5;
			obj_game.sHealth = 5;
			obj_game.days_since_shower = 1;
			obj_game.days_since_work = 1;
			obj_game.days_since_cooking = 1;
			obj_game.days_since_laundry = 1;
			obj_game.days_since_cleaning = 1;
		
			//recreate main menu buttons
			room_goto(rm_mainmenu);
		}
	}
}

else if (obj_game.progress == 12)
{
	myText[0] = "You seem to be doing better since you started seeking treatment. Do you think it has helped?\n  1 - I haven't noticed too much of a change honestly.\n  2 - Not enough to stick with it.\n  3 - I've noticed some improvement.";
	if(myTextbox.page == 0)
	{
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			myText[1] = "Sometimes treatments can take a while before they become effective. Good things can take time.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
		if(keyboard_check_pressed(ord("2")))
		{
			myText[1] = "Sometimes a treatment just isn't the right fit, but a different treatment might make a world of difference.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
		if(keyboard_check_pressed(ord("3")))
		{
			myText[1] = "I'm so happy to hear it. Just remember this feeling and to keep at it when it gets difficult.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
	myText[2] = "Continue to the next day?\n  1 to accept\n  2 to reject";
	if(myTextbox.page == 2)
	{
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			awaitinput = false;
			special_activity_effects();
			instance_destroy(myTextbox);
			obj_fade.fadein = false;
			obj_fade.fadeout = true;
			//room_goto(rm_house); <- done in obj_fade
		}
	
		if(keyboard_check_pressed(ord("2")))
		{
			awaitinput = false;
		
			instance_destroy(myTextbox);
		
			//reset variables
			obj_game.progress = 1;
			obj_game.day = 0;
			obj_game.energy = 3;
			obj_game.mHealth = 5;
			obj_game.pHealth = 5;
			obj_game.sHealth = 5;
			obj_game.days_since_shower = 1;
			obj_game.days_since_work = 1;
			obj_game.days_since_cooking = 1;
			obj_game.days_since_laundry = 1;
			obj_game.days_since_cleaning = 1;
		
			//recreate main menu buttons
			room_goto(rm_mainmenu);
		}
	}
}

else
{
	myText[0] = "Continue to the next day?\n  1 to accept\n  2 to reject";
	if(myTextbox.page == 0){
		awaitinput = true;
		if(keyboard_check_pressed(ord("1"))){
			awaitinput = false;
			special_activity_effects();
			instance_destroy(myTextbox);
			obj_fade.fadein = false;
			obj_fade.fadeout = true;
			//room_goto(rm_house); <- done in obj_fade
		}
	
		if(keyboard_check_pressed(ord("2"))){
			awaitinput = false;
		
			instance_destroy(myTextbox);
		
			//reset variables
			obj_game.progress = 1;
			obj_game.day = 0;
			obj_game.energy = 3;
			obj_game.mHealth = 5;
			obj_game.pHealth = 5;
			obj_game.sHealth = 5;
			obj_game.days_since_shower = 1;
			obj_game.days_since_work = 1;
			obj_game.days_since_cooking = 1;
			obj_game.days_since_laundry = 1;
			obj_game.days_since_cleaning = 1;
		
			//recreate main menu buttons
			room_goto(rm_mainmenu);
		}
	}
}