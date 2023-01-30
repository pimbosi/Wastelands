/// @description Intervalo atks magia
// You can write your code in this editor

if(global.powers[4][3] > 0){ //Se a flag tiver ativa o poder é acionado
	
	alarmtime[5] = 120;	

	//switch para controlar os atributos dos poderes a depender do nivel
	switch(global.powers[4][3]) 
	{
		//poder no nivel 1
		case 1: //caso o lvl seja 1 então...
			
			magia_dmg = 0.5
			alarmtime[5] = 120
			
			break;
		
		//poder no nivel 2
		case 2:  //caso o lvl seja 2 então...
			
			magia_dmg = 2.2;
			alarmtime[5] = 110
			//ex: axe_vel = 20
			
			break;
		//poder no nivel 3
		case 3: //caso o lvl seja 3 então...
		
			magia_dmg = 2.25;
			alarmtime[5] = 100
			repeticao_magia = 2;
			
			break;
		case 4:
			
			repeticao_magia = 2
			magia_dmg = 3.25;
			alarmtime[5] = 90
		
			break;
			
		case 5:
			
			repeticao_magia = 3;
			magia_dmg = 3.25;
			alarmtime[5] = 90
			
			break;
		//adicione mais case caso tenha mais niveis de poder		
		
	}	

	event_user(5);	

}

alarm[5] = alarmtime[5];






