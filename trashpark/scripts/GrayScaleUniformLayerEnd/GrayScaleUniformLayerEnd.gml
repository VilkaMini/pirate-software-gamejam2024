// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GrayScaleUniformLayerEnd(){
	if(event_type == ev_draw && event_number == ev_draw_normal) shader_reset();
}