/// @description Intervalo atks da Faca
if(global.powers[2][3] > 0){ //Se a flag tiver ativa o poder é acionado
	
	alarmtime[3] = 150;
	
	//switch para controlar os atributos dos poderes a depender do nivel
	switch(global.powers[2][4])
	{
		//poder no nivel 1
		case 1: 
		
			break;
		
		//poder no nivel 2
		case 2: 
		
			break;
		//poder no nivel 3
		case 3: 
		
			break;
	}
	event_user(3);
}

alarm[3] = alarmtime[3];