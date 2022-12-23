/// @description Melee

//switch pra já iniciar com o melee
switch(melee_dmg)
{
	case melee_dmg : 
		event_user(0);			
	break;
		
	default:
	break;
}

	//upar o atk melee
	if(global.powers[2][3] > 0)
	{
		switch(melee_dmg)
		{	
			case melee_dmg : 
				event_user(0);			
			break;
	
			default:
			break
		}
	}

alarm[0] = alarmtime[0];



