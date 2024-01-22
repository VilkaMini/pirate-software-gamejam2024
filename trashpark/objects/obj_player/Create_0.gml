/// @description Create event for player

movement_speed = 1;
v_speed = 0;
h_speed = 0;
current_movement_angle = 0;

cone_object = instance_create_layer(x, y, "Instances", obj_detection_cone)
cone_object.active_player_id = id;