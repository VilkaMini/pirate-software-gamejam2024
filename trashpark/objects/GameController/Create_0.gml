/// @description Game Variables
#macro TRASH_PLASTIC 0
#macro TRASH_FOOD 1
#macro TRASH_ELECTRONIC 2
#macro TRASH_METAL 3

global.trash_type_counts = [0, 0, 0, 0]
global.trash_gui_icons = [spr_plastic_bag, spr_half_eaten_Hotdog, spr_electronics_trash, spr_metal_scrap]


#macro SUPERSAMPLEMULTIPLIER 8

global.total_trash_count = 0;
global.plastic_trash_count = 0;
global.food_trash_count = 0;
global.electronic_trash_count = 0;
global.draw_item_amount_ui = true;

SuperSample();