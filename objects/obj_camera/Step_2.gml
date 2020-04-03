//elminates lag when following
if(instance_exists(target)){
	//cause the camera to lag behind the player slightly for smooth movement
	viewx = lerp(viewx, target.x, 0.1);
	viewy = lerp(viewy, target.y, 0.1);
	vm = matrix_build_lookat(viewx, viewy, -10, viewx, viewy, 0, 0, 1, 0);
	camera_set_view_mat(camera, vm);
	camera_set_proj_mat(camera, pm);
}