///@description Intervalo atks melee

switch(global.powers[3][3])
	{
		//poder no nivel 1
		case 1: 
			
			melee_dmg += 0.2
			alarmtime[0] -= 20
			
			break;
		
		//poder no nivel 2
		case 2: 
			
			melee_dmg += 0.2
			alarmtime[0] -= 20
			
			break;
		//poder no nivel 3
		case 3: 
			
			melee_dmg += 0.2
			alarmtime[0] -= 25
			
			break;
		case 4:
			
			melee_dmg += 2
			alarmtime[0] -= 25
		
		break;						
	}
	
event_user(0);			



alarm[0] = alarmtime[0];



