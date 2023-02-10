/// @description magia
// You can write your code in this editor

var target_enemy = 0;
var distance

if !instance_exists(global.torre_check) && !instance_exists(global.boss_check)
{
	target_enemy = instance_nearest(x,y, obj_enemy_parent)
}
else if instance_exists(global.boss_check)
{
	target_enemy = instance_nearest(x,y, obj_boss_parent)
}
else if (obj_torre_parent.esta_perto == true)
{
	target_enemy = instance_nearest(x,y, obj_torre_parent)
}
else
{
	target_enemy = instance_nearest(x,y, obj_enemy_parent)
}

if  instance_exists(target_enemy)
{
	distance = point_distance(x, y, target_enemy.x, target_enemy.y);
}
else
{
	instance_destroy();
}

	var magia = instance_create_layer(x, y, "Instances", obj_magia);
		magia.speed = 3;
		magia.direction = point_direction(x,y, target_enemy.x, target_enemy.y);
		magia.image_angle = point_direction(x,y, target_enemy.x, target_enemy.y);

