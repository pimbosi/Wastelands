///@descr Intervaloatks bola de fogo
if(FlagBolaDeFogo) bolaDeFogoAtiva = true; //Se a flag tiver ativa o poder é acionado
if (bolaDeFogoAtiva)
	{
		fire0 = 1;
		alarmtime[2] = 150;
	}

switch(fire0)
{
	case 1 : 
		event_user(2);			
	break;
	
	default:
	break;
	
}

alarm[2] = alarmtime[2];




