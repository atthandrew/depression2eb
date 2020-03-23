/// @description Insert description here
// You can write your code in this editor

if (currentDay != loggedDay)
{
	loggedDay = currentDay;
	if (currentDay == 1)
	{
		//Display tutorial dialogue boxes
	}
	else if (currentDay == 2)
	{
		energy--;
		//Display effects dialogue box
	}
}

if (activity.name == playComputer)
{
	if (currentDay == 2)
	if (energy >= activity.cost)
	{
		energy = energy - activity.cost;
		pHealth = pHealth - 1;
		mHealth = mHealth + 1;
		sHealth = sHealth + 1;
	}
}

else if (activity.name == workComputer)
{
	if (energy >= activity.cost)
	{
		energy = energy - activity.cost;
		pHealth = pHealth + 2;
		mHealth = mHealth + 1;
		sHealth = sHealth - 1;
		//Display activity dialogue box
	}
	else
	{
		//Display not enough energy dialogue box
	}
}

else if (activity.name == bed)
{
	//Play sleep animation
	currentDay++;
	energy = 3;
}