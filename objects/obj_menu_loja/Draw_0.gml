if (paused == true) {
if !surface_exists(paused_surf) {
    if paused_surf == -1 {
		 instance_deactivate_all(true);
    }
    paused_surf = surface_create(display_get_gui_width(), display_get_gui_height());

	surface_set_target(paused_surf);
    surface_reset_target();
	
}else{
	
	draw_set_valign(fa_top); //Alinhamento vertical das letras (em cima)
    draw_set_halign(fa_left); //Alinhamento horizontal das letras (a esquerda)
	
	wgui = camera_get_view_x(view_camera[0]) + display_get_gui_width()/2
	hgui = camera_get_view_y(view_camera[0]) + display_get_gui_height()/2 
	//Pegando o último frame do jogo
	draw_sprite(screenShot,0,camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]))
    //Desenhando o background do menu
	draw_sprite_ext(sprite_index, image_index, wgui-200, hgui-225,menu_width/sprite_width, menu_height/sprite_height, 0, c_white,1)
   
   
	draw_set_font(f_tn)  //Setando a fonte que sera utilizada pra escrever as opções
	draw_set_color(c_black) //Setando a cor da fonte para preto
	msg = "Suba de nível" //Desenha o título do menu
	draw_text_transformed(wgui-75, hgui-175, msg, 1.5,1.5,image_angle)
    
   
	for(var i = 0; i < poderes_escolhidos;i++){	
		
		var esclhd_Nome = global.chosen_ones[i][0];
		var esclhd_Descricao = global.chosen_ones[i][1];
		var esclhd_Sprite = global.chosen_ones[i][2];
		var esclhd_Nivel = global.chosen_ones[i][3];
		var esclhd_Nsei = global.chosen_ones[i][4];
		var esclhd_Id = global.chosen_ones[i][5];
		
		//Desenhando o background das opções
	    draw_sprite_ext(spr_bg_menuOpcao, 0,wgui-175,hgui-125 + bg_opcao_space*i, bg_opcao_width/sprite_width, bg_opcao_height/sprite_height, 0, c_white,1) 
		//Desenhando o título dos poderes 
		draw_text_transformed(wgui-70, hgui-113 + bg_opcao_space*i , esclhd_Nome, 1,1,image_angle)	 
		//Desenhando a descrição dos poderes
		draw_text_transformed(wgui-70, hgui-80 + bg_opcao_space*i, esclhd_Descricao, 1,1,image_angle) 
		//Desenha o nível
		msg = "Nível: " + string(esclhd_Nivel)
		draw_text_transformed(wgui+95, hgui-113+ bg_opcao_space*i, msg, 1,1,image_angle)
		
		//Desenhando o background dos poderes
		draw_sprite_ext(spr_bg_poderes, 0,wgui-165,hgui-115 + bg_opcao_space*i, bg_poderes_width/sprite_width, bg_poderes_height/sprite_height, 0, c_white,1) 
		
		//Desenhando os poderes
		draw_sprite_ext(esclhd_Sprite, 0, wgui-160, hgui-115+ bg_opcao_space*i, poderes_width/sprite_width, poderes_height/sprite_height, 0, c_white,1)
		
		//draw_set_color(noone)
		
				
		mx = device_mouse_x_to_gui(0) + camera_get_view_x(view_camera[0])
		my = device_mouse_y_to_gui(0) + camera_get_view_y(view_camera[0])
		
		x1 = wgui - 170 //A cordenada x do lado esquerdo do retangulo que queremos checkar.
		y1 = hgui-70 - bg_opcao_space/2 + bg_opcao_space*i //A cordenada y do lado superior do retangulo que queremos checkar.
		x2 = wgui + 185 //A cordenada x do lado direito do retangulo que queremos checkar.
		y2 = hgui-85 + bg_opcao_space/2 + bg_opcao_space*i //A cordenada y do lado inferior do retangulo que queremos checkar.
			
		if(point_in_rectangle(mx, my, x1, y1, x2, y2)){  		
			
		//Desenhando o background das opções selecionadas
	    draw_sprite_ext(spr_bg_menuOpcao, 1,wgui-175,hgui-125 + bg_opcao_space*i, bg_opcao_width/sprite_width, bg_opcao_height/sprite_height, 0, c_white,1) 
		//Desenhando o título dos poderes selecionados
		draw_text_transformed(wgui-70, hgui-113 + bg_opcao_space*i , esclhd_Nome, 1,1,image_angle)	 
		//Desenhando a descrição dos poderes selecionados
		draw_text_transformed(wgui-70, hgui-80 + bg_opcao_space*i, esclhd_Descricao, 1,1,image_angle) 
		//Desenha o nível selecionados
		msg = "Nível: " + string(esclhd_Nivel)
		draw_text_transformed(wgui+95, hgui-113+ bg_opcao_space*i, msg, 1,1,image_angle)
		
		//Desenhando o background dos poderes selecionados
		draw_sprite_ext(spr_bg_poderes, 0,wgui-165,hgui-115 + bg_opcao_space*i, bg_poderes_width/sprite_width, bg_poderes_height/sprite_height, 0, c_white,1) 
		
		//Desenhando os poderes selecionados
		draw_sprite_ext(esclhd_Sprite, 0, wgui-160, hgui-115+ bg_opcao_space*i, poderes_width/sprite_width, poderes_height/sprite_height, 0, c_white,1)
			
			if(mouse_check_button(mb_left)){
				
				//Adicionando items ao iventário
                ds_list_add(global.inventario, esclhd_Nome, esclhd_Descricao, esclhd_Sprite,
				esclhd_Nivel, esclhd_Nsei, esclhd_Id);
				
				
				for(xx = 0;xx < array_length(global.powers);xx++){
					if(global.powers[xx][0] == global.chosen_ones[i][0]){
						global.powers[xx][3]++			
					}
				}
				
				paused = !paused;
	
			    if(paused == false){
			        instance_activate_all();
			        surface_free(paused_surf);
			        paused_surf = -1;
			    }
			}
		}
							
	}
	draw_set_valign(-1)
	draw_set_halign(-1)
	draw_set_font(-1)
	draw_set_color(noone)
    }
	
}
//Funcionalidades do iventário
global.countIventario = ds_list_size(global.inventario); //Tamanho do iventario

/*Nota: A condição a baixo utiliza a função, PesquisqIventario, que 
  pesquisa através do id do item se ele tá no iventário ou não,
  se ele tiver, a flag dele ativada*/
if(PesquisaIventario(1)!= -1) FlagBolaDeFogo = true; //Pesquisando a bola de fogo
if(PesquisaIventario(2)!= -1) FlagMachado = true; //Pesquisando o machado
if(PesquisaIventario(5)!= -1) FlagFaca = true; //Pesquisando a faca
