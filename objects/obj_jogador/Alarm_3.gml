/// @description Intervalo atks da Faca
if(FlagFaca) facaAtiva = true; //Se a flag tiver ativa o poder é acionado
if (facaAtiva)
	{
		faca0 = 1;
		alarmtime[3] = 150;
	}

switch(faca0)
{
	case 1 : 
		event_user(3);			
	break;
	
	default:
	break;
	
}

alarm[3] = alarmtime[3];

