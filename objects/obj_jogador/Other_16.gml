/// @description Insert ataque orbe

if !instance_exists(obj_orbe)
{
	var _orbe = instance_create_layer(self.x, self.y, "Instances", obj_orbe);
		_orbe.speed = 1
}


