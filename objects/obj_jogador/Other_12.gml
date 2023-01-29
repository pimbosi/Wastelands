///@descr ataque da bola de fogo

repeat(repeticao_fireball){
var fireball= instance_create_layer(x,y, "Instances", obj_weapon_fireball);	
	fireball.direction = irandom_range(0,360);	
	fireball.image_angle = fireball.direction;
	fireball.speed = 3;
}