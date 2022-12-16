//Intervalo entre atks bola de fogo

if (keyboard_check(vk_enter))
	{
		fire0 = 1;
		alarmtime[2] = 150;
	}

switch(fire0)
{
	case 1 : 
		event_user(2);			
	break;
	
	default:
	break;
	
}

alarm[2] = alarmtime[2];




