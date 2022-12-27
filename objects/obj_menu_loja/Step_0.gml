if (loja){ //Se a variável global da loja estiver aberta (true)
	lojaOpen = true; //A variavél interna de controle da loja é aberta (true)
	loja = false;//A variável global da loja se torna fechada(false)
}
if (lojaOpen){//Se a variável interna de controle da loja estiver aberta(true), a loja abri

    screenShot = sprite_create_from_surface(application_surface,view_xview[0],view_yview[0],view_wview[0],view_hview[0],0,0,0,0)   
	
	global.chosen_ones = []
	escolhidos = []
	poderes_escolhidos = 0
	while(poderes_escolhidos < 3 && array_length(escolhidos) < array_length(global.powers)){
		
		menu_length = array_length(global.powers) - 1 
		x = irandom(menu_length)
		
		if(array_get_value(global.chosen_ones, global.powers[x]) == -1){
			if(global.powers[x][3] < global.powers[x][4]){
				array_push(global.chosen_ones, global.powers[x])
				poderes_escolhidos += 1
			}
			if(array_get_value(escolhidos, global.powers[x]) == -1){
				array_push(escolhidos, global.powers[x])
			}
		}
		
	}
	tamanho = array_length(global.chosen_ones); 
	
	if(poderes_escolhidos < 3){
		
	}
	
    paused = !paused; //Jogo despausa
	lojaOpen = !lojaOpen; //Loja fecha
	
    if(paused == false){
        instance_activate_all();
        surface_free(paused_surf);
        paused_surf = -1;
    }
}

if paused == true{
    alarm[0]++;
    alarm[1]++;
}



