/// @description faca

var faca = instance_create_layer(x, y, "Instances", obj_faca);
	faca.speed = 5;
	faca.direction = point_direction(x,y, mouse_x, mouse_y);
	faca.image_angle = point_direction(x,y, mouse_x, mouse_y)

