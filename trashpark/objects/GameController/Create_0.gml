/// @description Game Variables
#macro TRASH_PLASTIC 0
#macro TRASH_FOOD 1
#macro TRASH_ELECTRONIC 2
#macro TRASH_METAL 3

// All list have to be the same length
global.trash_type_counts = [0, 0, 0, 0]
global.trash_gui_icons = [spr_plastic_bag, spr_half_eaten_Hotdog, spr_electronics_trash, spr_metal_scrap]
global.trash_cap = [20, 20, 20, 20] // Cap for each type of trash

global.game_running = true;
global.near_dumpster = false;

global.total_trash_count = 0;
global.total_score = 0;

global.draw_item_amount_ui = true;

global.grayscale_modifier = 0;

// Grayscale control
a = 0.1;
b = 50;

// Sound Control
audio_play_sound(snd_garbage_world, 0, 1, 0.1);

// Super Sample (draw multiple pixels on screen for one pixel in game)
#macro SUPERSAMPLEMULTIPLIER 8
SuperSample();