/// @description Intervalo atks da Faca

if (keyboard_check(vk_enter))
	{
		faca0 = 1;
		alarmtime[3] = 150;
	}

switch(faca0)
{
	case 1 : 
		event_user(3);			
	break;
	
	default:
	break;
	
}

alarm[3] = alarmtime[3];

