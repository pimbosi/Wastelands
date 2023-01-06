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
		draw_set_halign(fa_center); //Alinhamento horizontal das letras (a esquerda)
		draw_set_font(f_tn)  //Setando a fonte que sera utilizada pra escrever as opções
		
		w_gui =   camera_get_view_x(view_camera[0]) + display_get_gui_width() *2;
		h_gui =   camera_get_view_y(view_camera[0]) + display_get_gui_height() * 2;
		
		//Pegando o último frame do jogo
		draw_sprite(screenShot,0,camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]))
		
		draw_set_color(c_black); //Setando uma cor pra ser utilizada (Preto)
		draw_set_alpha(.7); //Opacidade do fundo
		draw_rectangle(w_gui,h_gui,0,0,false); //Desenhando um retangulo de fundo quando pausado o jogo
		draw_set_alpha(1);//Resetando a opacidade
		
		wgui = camera_get_view_x(view_camera[0]) + display_get_gui_width()/2
		hgui = camera_get_view_y(view_camera[0]) + display_get_gui_height()/2
		
		//Desenhando o background do menu
		draw_sprite_ext(sprite_index, image_index, wgui-200, hgui-225,menu_width/sprite_width, menu_height/sprite_height, 0, c_white,1)
	
		for(var i = 0; i < op_max; i++){
			//Desenhando o background das opções
			draw_sprite_ext(spr_bg_opcoes, 0,wgui-175,hgui+60 + bg_opcao_space*i, bg_opcao_width/sprite_width, bg_opcao_height/sprite_height, 0, c_white,1) 
		    //Escrevendo as opções
			draw_text_transformed(wgui+10, hgui+70 + bg_opcao_space*i , opcoes[i], 1,1,image_angle)
		}	
		
		draw_set_valign(-1)
		draw_set_halign(-1)
		draw_set_font(-1)
		draw_set_color(c_white);//Resetando a cor
	}
}
