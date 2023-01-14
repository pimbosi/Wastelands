///@description Intervalo atks melee

for(var i = 1; i < 10; i++)
{
	
	if (keyboard_check(vk_space))
	{
		melee_up = i/10 * melee_dmg;
		//melee_dmg += melee_up;
		alarmtime[0] = 120 - (i*10);
	}
}

switch(melee0)
{
	case melee0 : 
		event_user(0);			
	break;
	
	default:
	break;
	
}



alarm[0] = alarmtime[0];



