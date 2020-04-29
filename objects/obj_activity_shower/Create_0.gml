event_inherited();

myTextbox = noone;
awaitinput = false;

if(obj_game.days_since_shower != 0)
{
	myText[0] = "Take a shower?\n  1 to accept (E- M- P+ S+)\n  2 to reject)";
	myName = "Shower";
}
else
{
	myText[0] = "You already took a shower today.";
	myName = "You";
}