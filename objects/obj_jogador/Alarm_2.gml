///@descr Intervaloatks bola de fogo
if (global.powers[0][3] > 0){ //Se a flag tiver ativa o poder é acionado

	alarmtime[2] = 150;

	//switch para controlar os atributos dos poderes a depender do nivel
	switch(global.powers[0][3])
	{
		//poder no nivel 1
		case 1: 
			fireball_dmg = 30
			break;
		
		//poder no nivel 2
		case 2: 
			fireball_dmg = 1000
			break;
		//poder no nivel 3
		case 3: 
			fireball_dmg = 50
			break;
	}

	event_user(2);
}
alarm[2] = alarmtime[2];

