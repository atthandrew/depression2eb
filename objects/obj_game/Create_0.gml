day = 0;
progress = 1;
paused = false;

//Energy to perform activities
energy = 3;

//Ready to move on to next day
bed = false;

//Three health stats to be balanced
pHealth = 5;
mHealth = 5;
sHealth = 5;

//Detects if returning to rm_house from the map
returning_home = false;

//Tracks if out of energy warning has been given
warning_given = false;

//Special Activity Day counters
days_since_shower = 1;
days_since_work = 1;
days_since_cooking = 1;
days_since_laundry = 1;
days_since_cleaning = 1;

//Used for drawing UI
bar_width = 5;
bar_spacing = bar_width * 2;

//Game option variables
text_speed = 1;

//Desaturation shader
shader = shd_desaturation;
u_strength = shader_get_uniform(shader, "strength");
desat_strength = 0;
application_surface_draw_enable(false);

//Activity bonuses
daysGamed = 0;
gameComplete = 0;

daysWorked = 0;
workComplete = 0;

daysPracticed = 0;
practiceComplete = 0;

daysWatched = 0;
showComplete = 0;

daysListened = 0;
songsComplete = 0;
danceCount = 0;

daysRead = 0;
readComplete = 0;

daysCooked = 0;
recipeComplete = 0;

snackAmount = 0;
snackAdded = false;

daysPainted = 0;
paintComplete = 0;
paintPractice = 0;