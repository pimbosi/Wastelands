/// @description Insert description here
// You can write your code in this editor

spell_1_cd--

if spell_1_cd <=0{
	var _inst = instance_create_layer(x,y,"instances",obj_spell_boss1)
	_inst.speed = 1.5
	_inst.direction = point_direction(x,y,obj_jogador.x,obj_jogador.y)
	
	spell_1_cd = spell_1_timer
}

if hitpoints<=0{
	instance_destroy()
	room_goto(Mapa2)
}

if place_meeting(x,y, obj_jogador){
	hitpoints -= 5
}

