/// @description UI DRAW

if (global.draw_item_amount_ui)
{
	draw_set_halign(fa_left);
	for (var i=0; i<array_length(global.trash_type_counts); i++)
	{
		draw_sprite_ext(global.trash_gui_icons[i], 0, 5, 10+v_item_offset*i, 0.5, 0.5, 0, c_white, 1);
		draw_set_colour(c_yellow);
		draw_text_transformed(12, 10+v_item_offset*i, ":", 0.5, 0.5, 0);
		
		if (global.trash_type_counts[i] < global.trash_cap[i])
		{
			draw_set_colour(c_yellow);
		}
		else
		{
			draw_set_colour(c_red);
		}
		var _str = string(global.trash_type_counts[i]);
		draw_text_transformed(20, 10+v_item_offset*i, _str, 0.5, 0.5, 0);
	}
}

if (!global.game_running)
{
	draw_set_halign(fa_center);
	draw_set_colour(c_red);
	draw_text_transformed(_vx/2,_vy/2, "GAME OVER", 1, 1, 0);
	
}

if (global.near_dumpster)
{
	draw_set_halign(fa_center);
	draw_set_colour(c_yellow);
	draw_text_transformed(_vx/2, _vy/1.5, "PRESS SPACE TO DEPOSIT", 1, 1, 0);
}

draw_set_halign(fa_center);
draw_set_colour(c_yellow);
draw_text_transformed(_vx/2, 10, string_concat("SCORE: ", global.total_score), 1, 1, 0);

