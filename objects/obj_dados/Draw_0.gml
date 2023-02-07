     instance_deactivate_all(true);

     draw_set_valign(fa_top); //Alinhamento vertical das letras (em cima)
	 draw_set_halign(fa_center); //Alinhamento horizontal das letras (a esquerda)
	 draw_set_font(f_tn)  //Setando a fonte que sera utilizada pra escrever as opções
		
	 wgui = camera_get_view_x(view_camera[0]) + display_get_gui_width()/2
	 hgui = camera_get_view_y(view_camera[0]) + display_get_gui_height()/2
		
	 //Desenhando a máscara preta atrás do menu 
	 draw_sprite_ext(spr_black_mask, 1, wgui+4, hgui+3, blck_width/sprite_width, blck_height/sprite_height, 0, c_white,1)
	
	 draw_set_color(c_black); //Setando uma cor pra ser utilizada (Preto)
		
	 //Desenhando o background do menu
	 draw_sprite_ext(sprite_index, image_index, wgui-200, hgui-225,menu_width/sprite_width, menu_height/sprite_height, 0, c_white,1)
	
	 //Desenhando o background das opções
	 draw_sprite_ext(spr_bg_opcoes, 0, wgui-175, hgui+180, bg_opcao_width/sprite_width, bg_opcao_height/sprite_height, 0, c_white,1) 
				
	 draw_text(wgui-175, hgui+180, "Continuar")			
	 mx = device_mouse_x_to_gui(0) + camera_get_view_x(view_camera[0])
	 my = device_mouse_y_to_gui(0) + camera_get_view_y(view_camera[0])
		
	 x1 = wgui - 170 //A cordenada x do lado esquerdo do retangulo que queremos checkar.
	 y1 = hgui+90 - bg_opcao_space/2 +121  //A cordenada y do lado superior do retangulo que queremos checkar.
	 x2 = wgui + 185 //A cordenada x do lado direito do retangulo que queremos checkar.
	 y2 = hgui+75 + bg_opcao_space/2 +121//A cordenada y do lado inferior do retangulo que queremos checkar.
			
	 if(point_in_rectangle(mx, my, x1, y1, x2, y2)){
			
	 //Desenhando a seta (esquerda) apontada pro item selecionado
	 draw_sprite_ext(spr_seta, image_index,wgui-135,hgui+188, selecionado_width/sprite_width, selecionado_height/sprite_height, 0, c_white,1)
	 //Desenhando a seta (direita) apontada pro item selecionado
	 draw_sprite_ext(spr_seta, image_index,wgui+150,hgui+214, selecionado_width/sprite_width, selecionado_height/sprite_height, 180, c_white,1)
		
	   if(mouse_check_button(mb_left)){
		    	game_restart();
	   }
	 }	
				
		draw_set_valign(-1); //Resetando alinhamento vertical
		draw_set_halign(-1); //Resetando alinhamento horizontal
		draw_set_font(-1); //Resetando a font
		draw_set_color(c_white);//Resetando a cor

