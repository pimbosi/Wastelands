///@description Intervalo atks machado
if(global.powers[1][3] > 0){ //Se a flag tiver ativa o poder é acionado

	for(var i = 1; i < 10; i++)
	{
	
		alarmtime[1] = 170 -(i * 2);
	
	} 

	//switch para controlar os atributos dos poderes a depender do nivel
	switch(global.powers[1][4])
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
	
	event_user(1);	

}

alarm[1] = alarmtime[1];
