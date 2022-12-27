///@descr Intervaloatks bola de fogo
if (global.powers[0][3] > 0){ //Se a flag tiver ativa o poder é acionado

	alarmtime[2] = 150;

	//switch para controlar os atributos dos poderes a depender do nivel
	switch(global.powers[0][4])
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

	event_user(2);
}
alarm[2] = alarmtime[2];

