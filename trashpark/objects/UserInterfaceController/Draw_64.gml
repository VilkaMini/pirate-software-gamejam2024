/// @description UI DRAW

if (global.draw_item_amount_ui)
{
	draw_set_halign(fa_left);
	for (var i=0; i<array_length(global.trash_type_counts); i++)
	{
		draw_set_colour(c_yellow);
		draw_sprite_ext(global.trash_gui_icons[i], 0, 5, 10+v_item_offset*i, 0.5, 0.5, 0, c_white, 1);
		draw_text_transformed(12, 10+v_item_offset*i, ":", 0.5, 0.5, 0);
		
		draw_set_colour(c_white);
		var _str = string(global.trash_type_counts[i]);
		draw_text_transformed(20, 10+v_item_offset*i, _str, 0.5, 0.5, 0);
	}
}