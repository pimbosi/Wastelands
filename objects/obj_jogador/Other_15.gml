/// @description Magia
// You can write your code in this editor

var target_enemy
var distance

if distance_to_object(global.inimigo_check1) < distance_to_object(global.inimigo_check2) && distance_to_object(global.inimigo_check1) < distance_to_object(global.inimigo_check3)
{
	target_enemy = 1;
}
else if distance_to_object(global.inimigo_check2) < distance_to_object(global.inimigo_check1) && distance_to_object(global.inimigo_check2) < distance_to_object(global.inimigo_check3)
{
	target_enemy = 2;
}
else
{
	target_enemy = 3;
}

if instance_exists(global.torre_check) && distance_to_object(global.torre_check) < 120 
{
	with(obj_torre_parent)
	{
		target_enemy = instance_nearest(x, y, global.torre_check)
	}
}
else
{
	with(obj_enemy_parent)
	{

		switch(target_enemy)
		{
				
			case 1:
				target_enemy = instance_nearest(x, y, obj_enemy_01)
				break;
		
			case 2:
				target_enemy = instance_nearest(x, y, obj_enemy_02)
				break;
		
			case 3:
				target_enemy = instance_nearest(x, y, obj_enemy_03)
				break;
			
		}		
	}
}

if instance_exists(global.boss_check)
{
	target_enemy = instance_nearest(x, y, global.boss_check)
}

distance = point_distance(x, y, target_enemy.x, target_enemy.y);
repeat(repeticao_magia){
	var magia = instance_create_layer(x, y, "Instances", obj_magia);
		magia.speed = 3;
		magia.direction = point_direction(x,y, target_enemy.x, target_enemy.y);
		magia.image_angle = point_direction(x,y, target_enemy.x, target_enemy.y);
	}