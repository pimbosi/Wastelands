/// @description Intervalo atks da Faca
if(global.powers[2][3] > 0){ //Se a flag tiver ativa o poder é acionado
	
	alarmtime[3] = 150;
	
	//switch para controlar os atributos dos poderes a depender do nivel
	switch(global.powers[2][3])
	{
		//poder no nivel 1
		case 1: 
			
			faca_dmg += 0.1
			alarmtime[3] -= 5;
			
			break;
		
		//poder no nivel 2
		case 2: 
		
			faca_dmg += 0.25
			alarmtime[3] -= 5;
		
			break;
		//poder no nivel 3
		case 3: 
		
			faca_dmg += 0.5
			alarmtime[3] -= 5;
		
			break;
		
		case 4:
		
			faca_dmg += 0.75
			alarmtime[3] -= 5;
			
			break;
	}
	event_user(3);
}

alarm[3] = alarmtime[3];