/// @description Intervalo raio

if(global.powers[6][3] > 0){ //Se a flag tiver ativa o poder é acionado
		
	alarmtime[7] = 300;
	
	//switch para controlar os atributos dos poderes a depender do nivel
	switch(global.powers[6][3])
	{
		//poder no nivel 1
		case 1: 
			
			raio_dmg += 2
			alarmtime[7] -= 5;
			
			break;
		
		//poder no nivel 2
		case 2: 
		
			raio_dmg += 2.2
			alarmtime[7] -= 5;
		
			break;
		//poder no nivel 3
		case 3: 
		
			raio_dmg += 2.5
			alarmtime[7] -= 5;
		
			break;
		
		case 4:
			
			raio_dmg += 2.7
			alarmtime[7] -= 5;
			
			break;
			
		case 5:
			
			raio_dmg += 3
			alarmtime[7] -= 10;
			
			break;
	}
	event_user(7);
}

alarm[7] = alarmtime[7];




