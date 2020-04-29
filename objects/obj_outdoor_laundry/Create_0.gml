event_inherited();

myTextbox = noone;
awaitinput = false;

if(obj_game.days_since_laundry > 1 || (obj_game.progress == 1 && obj_game.days_since_laundry != 0))
{
	myText[0] = "Do your laundry?\n  1 to accept (E- M+ P- S+)\n  2 to reject";
	myName = "Laundry";
}
else
{
	myText[0] = "You already did your laundry recently.";
	myName = "You";
}