event_inherited();

//Handle user input from the textbox for certain pages
myTextbox.name = "You";

if (obj_game.progress == 3)
{
	myText[0] = "You seemed a little run down today. Is everything alright?\n 1 - That's pretty normal.\n 2 - I'm sure it's nothing to worry about.\n 3 - Nothing I can do about it.";
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
	myText[2] = "Continue to the next day?\n 1 to accept\n 2 to reject";
	if(myTextbox.page == 2)
	{
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			awaitinput = false;
			special_activity_effects();
			instance_destroy(myTextbox);
			room_goto(rm_house);
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
		
			//recreate main menu buttons
			room_goto(rm_mainmenu);
		}
	}
}

else if (obj_game.progress == 10)
{
	myText[0] = "Today still seemed a little tough. How are you doing?\n 1 - I'm okay, just a little run down.\n 2 - I'm not doing so great...\n 3 - I'm used to it at this point.";
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
	myText[2] = "Continue to the next day?\n 1 to accept\n 2 to reject";
	if(myTextbox.page == 2)
	{
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			awaitinput = false;
			special_activity_effects();
			instance_destroy(myTextbox);
			room_goto(rm_house);
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
		
			//recreate main menu buttons
			room_goto(rm_mainmenu);
		}
	}
}

else
{
	myText[0] = "Continue to the next day?\n 1 to accept\n 2 to reject";
	if(myTextbox.page == 0){
		awaitinput = true;
		if(keyboard_check_pressed(ord("1"))){
			awaitinput = false;
			special_activity_effects();
			instance_destroy(myTextbox);
			room_goto(rm_house);
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
		
			//recreate main menu buttons
			room_goto(rm_mainmenu);
		}
	}
}