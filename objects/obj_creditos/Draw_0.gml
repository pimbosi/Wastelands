instance_deactivate_all(true);
	
        draw_set_valign(fa_top); //Alinhamento vertical das letras (em cima)
		draw_set_halign(fa_center); //Alinhamento horizontal das letras (a esquerda)
		draw_set_font(f_tn)  //Setando a fonte que sera utilizada pra escrever as opções
		
		wgui = camera_get_view_x(view_camera[0]) + display_get_gui_width()/2
		hgui = camera_get_view_y(view_camera[0]) + display_get_gui_height()/2
		
		draw_set_color(c_white); 
		
			if(current_time < ms_agora+2400){
				draw_sprite_ext(sprite_index, image_index,wgui, hgui+2, blck_width/sprite_width, blck_height/sprite_height, 0, c_white,1)
				draw_text_transformed(wgui, hgui - 50 , "The End", 1.5,1.5,image_angle)
				draw_text_transformed(wgui, hgui - 7 , "Parabéns, você zerou o game!", 1.5,1.5,image_angle)
			}else if(current_time > ms_agora+10400){ //1000ms = 1s
				game_restart();
			}
			else if(current_time > ms_agora+2400){
				draw_sprite_ext(sprite_index, 70,wgui, hgui+2, blck_width/sprite_width, blck_height/sprite_height, 0, c_white,1)
				draw_text_transformed(wgui, hgui - 320 , "Créditos", 1.5,1.5,image_angle)
				draw_text_transformed(wgui, hgui - 260 , "G. Augusto Rocha", 1.5,1.5,image_angle)
				draw_text_transformed(wgui, hgui - 230 , "Marcelo Alves", 1.5,1.5,image_angle)
				draw_text_transformed(wgui, hgui - 200 , "Gabriel Maciel", 1.5,1.5,image_angle)
				draw_text_transformed(wgui, hgui - 170 , "Murilo Brandão de Souza Rodrigues", 1.5,1.5,image_angle)
				draw_text_transformed(wgui, hgui - 140 , "Mateus Santos Negrini", 1.5,1.5,image_angle)
				draw_text_transformed(wgui, hgui - 110 , "Artur Bartz", 1.5,1.5,image_angle)
				draw_text_transformed(wgui, hgui - 80 , "Felipe Rodrigues", 1.5,1.5,image_angle)
			}
		
		draw_set_valign(-1);
		draw_set_halign(-1);
		draw_set_font(-1); 