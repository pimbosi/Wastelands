/// @description Insert description here
// You can write your code in this editor

var counter = instance_create_layer(self.x, self.y, "Instances", obj_atk1);
	counter.speed = 3;
	counter.direction = point_direction(x, y, obj_jogador.x, obj_jogador.y);
	counter.image_angle = point_direction( x, y, obj_jogador.x, obj_jogador.y)


