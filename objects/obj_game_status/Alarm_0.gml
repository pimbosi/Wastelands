/// @description Insert description here
// You can write your code in this editor

var _list= ds_list_create();
var _num = collision_circle_list(obj_jogador.x, obj_jogador.y, obj_jogador.collectRadius,obj_xp, false, true, _list, false);
if (_num > 0){
	for (var i = 0; i < _num; ++i;){
			_list[| i].canfly = true
	}
	}


alarm[0] = timer_xp;