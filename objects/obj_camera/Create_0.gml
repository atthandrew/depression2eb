//Set up the camera
camera = camera_create();
vm = matrix_build_lookat(0, 0, -10, 0, 0, 0, 0, 1, 0);
pm = matrix_build_projection_ortho(window_get_width(), window_get_height(), 1, 32000);
viewx = 0;
viewy = 0;
target = obj_player;

//Start looking at the target immediately if possible
if(instance_exists(target)){
	viewx = target.x
	viewy = target.y
}