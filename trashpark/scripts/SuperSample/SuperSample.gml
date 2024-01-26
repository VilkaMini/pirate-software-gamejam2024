/// @description Super Sampling
function SuperSample(){
	surface_resize(application_surface, camera_get_view_width(view_camera[0])*SUPERSAMPLEMULTIPLIER, camera_get_view_height(view_camera[0])*SUPERSAMPLEMULTIPLIER);
}