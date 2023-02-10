///@description Intervalo atks melee

if(global.powers[1][3] >= 0){
	
	audio_play_sound_on(sfxe, snd_meele, 0, 0);
	
	switch(global.powers[3][3])
		{
			//poder no nivel 1
			case 1: 
			
				melee_dmg = 5
				alarmtime[0] = 100
			
				break;
		
			//poder no nivel 2
			case 2: 
			
				melee_dmg = 5.25
				alarmtime[0] = 80
			
				break;
			//poder no nivel 3
			case 3: 
			
				melee_dmg = 5.5
				alarmtime[0] = 65
			
				break;
			case 4:
			
				melee_dmg = 6.25
				alarmtime[0] = 40
		
			break;
			case 5: 
			
				 melee_dmg = 6.75
				 alarmtime[0] = 40;
			
			case 6: 
			
				 melee_dmg = 7
				 alarmtime[0] = 40;	
				 
			break;	 
			
			case 7: 

				 melee_dmg = 7.5
				 alarmtime[0] = 40;		 
			break;	
			
			case 8: 

				 melee_dmg = 7.75
				 alarmtime[0] = 35;		 
			break;	
		
			case 9: 
			
				repeticao_melee = 3 
				 melee_dmg = 8
				 alarmtime[0] = 40;		 
			break;
			
			case 10: 

				 melee_dmg = 9
				 alarmtime[0] = 30;		 
			break;				

		}
	
	event_user(0);	

}

alarm[0] = alarmtime[0];



