// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GrayScaleUniformLayerBegin(){
	if(event_type == ev_draw && event_number == ev_draw_normal){
      shader_set(BlackWhiteShader);
      shader_params = shader_get_uniform(BlackWhiteShader, "grayscaleModifier");
      shader_set_uniform_f(shader_params, global.grayscale_modifier);
	  show_debug_message([layer, "  ", global.grayscale_modifier]);
	}
}