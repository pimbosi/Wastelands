/// @description destruir e spawnar entidades

//verificar a fase para spawnar o boss e a torre referente à ela

if room_get_name(room) == "Fase_01"
{
	boss_check = obj_boss;
	torre_check = obj_torre_1;
}
else if room_get_name(room) == "Mapa2"
{
	boss_check = obj_boss_2;
	torre_check = obj_torre_2;
}
else if room_get_name(room) == "Mapa3"
{
	boss_check = obj_boss_3;
	torre_check = obj_torre_3;
}

//destruir todos os inimigos parar o spawn e spawnar boss

if keyboard_check_released(vk_alt) && keyboard_check_released(vk_shift)
{
	obj_control_enemy.alarm[0] = 1000000;
	obj_control_enemy.alarm[1] = 1000000;
	obj_control_enemy.alarm[2] = 1000000;
	instance_destroy(obj_enemy_parent);
	instance_destroy(obj_torre_parent);
	instance_create_layer(obj_torre_life.x, obj_torre_life.y, "Instances", boss_check);
}

//recriar objetos destruidos

if keyboard_check_released(vk_f11) && !instance_exists(obj_enemy_parent)
{
	obj_control_enemy.alarm[0] = 1;
	obj_control_enemy.alarm[1] = 1;
	obj_control_enemy.alarm[2] = 1;
	instance_create_layer(obj_torre_life.x, obj_torre_life.y, "Instances", obj_torre_parent);
	instance_create_layer(obj_torre_life.x, obj_torre_life.y, "Instances", torre_check);
	instance_create_layer(x,y, "Instances", obj_enemy_parent);
	instance_destroy(boss_check);
	
}

//matar boss e ir para proxima fase

if keyboard_check_released(vk_control) && keyboard_check_released(vk_alt)
{
	instance_destroy(obj_boss_parent);	
	room_goto_next();
}


