/// @description Insert description here
// You can write your code in this editor

if hitpoints<=0{
	instance_create_layer(x,y,"instances",obj_boss1)
	
	instance_destroy()
}

if place_meeting(x,y, obj_jogador){
	hitpoints -= 5
}

