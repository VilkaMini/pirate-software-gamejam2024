/// @description Step
global.has_trash = false;

// GrayScale Control
global.grayscale_modifier = 1 / (1 + exp(-a * (global.total_trash_count - b)));

// End game if grayscale too far
if (global.grayscale_modifier > 0.99)
{
	global.game_running = false;
	global.near_dumpster = false;
	global.draw_item_amount_ui = false;
}

// Check if carying trash
for (var i=0; i<array_length(global.trash_type_counts); i++)
{
	if (global.trash_type_counts[i] > 0){
		global.has_trash = true;
		break;
	}
}

// Deposit to dumpster if it is near
if (global.space_clicked && global.near_dumpster && global.has_trash)
{
	audio_play_sound(snd_garbage_throw_away_sound_effect, 0, 0, 0.1);
	for (var i=0; i<array_length(global.trash_type_counts); i++)
	{
		global.total_score += global.trash_type_counts[i];
		global.trash_type_counts[i] = 0;
	}
}