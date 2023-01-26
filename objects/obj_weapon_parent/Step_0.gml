///@description colisão da arma com inimigo

var _list = ds_list_create(); //criar lista
var _num = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_enemy_parent, false, true, _list, false); //criar retangulo de colisão

if (_num > 0) && (obj_jogador.weapon_cooldown[4] > 0)
{
	
    for (var i = 0; i < _num; ++i;)
    {
		if(_list[| i].sprite_index == _list[| i].spr)
		{
	
			//knockback							
			var dir = point_direction(x,y, _list[| i].x, _list[| i].y);
				_list[| i].x = _list[| i].x + lengthdir_x(10, dir);
				_list[| i].y = _list[| i].y + lengthdir_y(10, dir);
			
			//sprite branco
			_list[| i].sprite_index = _list[| i].sprW;
					
				//dano sofrido
				_list[| i].inimigo_hp -= dmg;
				
				obj_jogador.weapon_cooldown[4] -= 1;
				
				if obj_jogador.weapon_cooldown[4] == 0
				{
					instance_destroy();
					obj_jogador.weapon_cooldown[4] = 2;
				}
			
				
			if(_list[| i].inimigo_hp <= 0)
			{
				//destruir entidade
				instance_destroy(_list[| i]);
				//Dropando xp na layer do menu quando o personagem morre
				instance_create_layer(x,y,"Menu",obj_xp);
			}
		}
	}
}

ds_list_destroy(_list);

//CHEFES

//dano nos chefes

var _list = ds_list_create();
var _num = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_boss_parent, false, true, _list, false);


if (_num > 0) && (obj_jogador.weapon_cooldown[4] > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
		if(_list[| i].sprite_index == _list[| i].spr)
		{
			
			//knockback							
			var dir = point_direction(x,y, _list[| i].x, _list[| i].y);
				_list[| i].x = _list[| i].x + lengthdir_x(10, dir);
				_list[| i].y = _list[| i].y + lengthdir_y(10, dir);
			
			//sprite branco
			_list[| i].sprite_index = _list[| i].sprW;
					
				//dano sofrido
				_list[| i].boss_hp -= dmg; 	
				
				obj_jogador.weapon_cooldown[4] -= 1;
				
				if obj_jogador.weapon_cooldown[4] == 0
				{
					instance_destroy();
					obj_jogador.weapon_cooldown[4] = 2;
				}
			
			if(_list[| i].boss_hp <= 0)
			{
				//destruir entidade
				instance_destroy(_list[| i]);
				//Dropando xp na layer do menu quando o personagem morre				
				room_goto_next();
			}
		}
	}
}

ds_list_destroy(_list);

//TORRES

//checar qual torre existe para definir o boss q vai spawnar

if instance_exists(obj_torre_1)
{
	boss_check = obj_boss;
}
else if instance_exists(obj_torre_2)
{
	boss_check = obj_boss_2;
}
else if instance_exists(obj_torre_3)
{
	boss_check = obj_boss_3;
}

//dano nas torres

var _list = ds_list_create();
var _num = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_torre_parent, false, true, _list, false);

if (_num > 0) && (obj_jogador.weapon_cooldown[4] > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
		if(_list[| i].sprite_index == _list[| i].spr)
		{
						
				//sprite branco
				_list[| i].sprite_index = _list[| i].sprW;
					
				//dano sofrido
				_list[| i].torre_hp -= dmg; 	
				
				obj_jogador.weapon_cooldown[4] -= 1;
				
				if obj_jogador.weapon_cooldown[4] == 0
				{
					instance_destroy();
					obj_jogador.weapon_cooldown[4] = 2;
				}
							
			if (_list[| i].torre_hp <= 0)
			{
				//destruir entidade
				instance_destroy(_list[| i]);
				
				//Spawnando boss após a torre ser destuída
				instance_create_layer(x,y,"Instances", boss_check);
			}
		}
	}
}

ds_list_destroy(_list);

