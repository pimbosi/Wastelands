/// @description Intervalo orbe

if(global.powers[5][3] > 0){ //Se a flag tiver ativa o poder é acionado
		
	alarmtime[6] = 300;
	
	//switch para controlar os atributos dos poderes a depender do nivel
	switch(global.powers[5][3])
	{
		//poder no nivel 1
		case 1: 
			
			orbe_dmg += 2
			alarmtime[6] -= 10;
			
			break;
		
		//poder no nivel 2
		case 2: 
		
			orbe_dmg += 2.2
			alarmtime[6] -= 10;
		
			break;
		//poder no nivel 3
		case 3: 
		
			orbe_dmg += 2.3
			alarmtime[6] -= 10;
		
			break;
		
		case 4:
			
			orbe_dmg += 2.5
			alarmtime[6] -= 20;
			
			break;
			
		case 5:
			
			orbe_dmg += 3
			alarmtime[6] -= 30;
			
			break;
	}
	event_user(6);
}

alarm[6] = alarmtime[6];




