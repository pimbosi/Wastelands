/// @description raio
if !instance_exists(obj_raio)
{
	instance_create_layer(irandom_range(obj_jogador.x - 200, obj_jogador.x + 200), irandom_range(obj_jogador.y + 200, obj_jogador.y - 200), "Instances", obj_raio)
}
else
{
	instance_destroy(obj_raio);
}