	
	// inputs
	//movimentação pelo menu
	up_key = keyboard_check_pressed(vk_up);  //para cima
	down_key = keyboard_check_pressed(vk_down); //para baixo
	acept_key = keyboard_check_pressed(vk_space); //selecionar opção
	//Movendo pelo menu
	pos += down_key - up_key;	

	if pos >= op_lenth { pos = 0 };
	if pos < 0 { pos = op_lenth-1};

	if acept_key{
		switch(pos){
		//Iniciar Jogo
		case 0:		
			break;
		//Configurações	
		case 1:
			break;
	    //Fechar o jogo		
		case 2:
			game_end();
			break;
		}
	}