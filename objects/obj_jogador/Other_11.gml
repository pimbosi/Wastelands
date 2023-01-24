///@description ataque do machado
repeat(repeticao_axe){
var axe = instance_create_layer(x,y, "Instances", obj_weapon_axe);
		axe.direction = irandom_range(45,135);
		axe.speed = 8;
		axe.gravity = 0.22;
}