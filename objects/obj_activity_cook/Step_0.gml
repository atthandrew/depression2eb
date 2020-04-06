// Inherit the parent event
event_inherited();

if(myTextbox != noone){
	if(myTextbox.page == 0 && !is_warning){
		awaitinput = true;
		if(keyboard_check_pressed(ord("1")))
		{
			if(obj_game.energy > 0)
			{
				obj_game.energy--;
				obj_game.mHealth++;
				obj_game.pHealth++;
				obj_game.sHealth--;
				daysCooked++;
			
				if (daysCooked == recipeComplete)
				{
					mealQuality = irandom_range(1, 5);
					if (mealQuality < 5)
					{
						myText[1] = "You learned a new recipe.";
					}
					else
					{
						myText[1] = "You perfected a recipe and made a five star dish! (P+)";
						obj_game.pHealth++;
					}
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
					recipeComplete = 0;
					daysCooked = 0;
				}
				else
				{
					myText[1] = "You cooked yourself a nice homemade meal."
					advance_textbox_page(myTextbox, self);
					awaitinput = false;
				}
			}
			else
			{
				myText[1] = "You don't have enough energy for this activity";
				advance_textbox_page(myTextbox, self);
				awaitinput = false;
			}
		}
	
		if(keyboard_check_pressed(ord("2")))
		{
			myText[1] = "Maybe you'll just order takeout.";
			advance_textbox_page(myTextbox, self);
			awaitinput = false;
		}
	}
}

if (recipeComplete == 0)
{
	recipeComplete = irandom_range(3, 5)
}