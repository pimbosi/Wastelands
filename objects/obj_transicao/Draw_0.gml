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
		
		wgui = camera_get_view_x(view_camera[0]) + display_get_gui_width()/2
		hgui = camera_get_view_y(view_camera[0]) + display_get_gui_height()/2
		
		draw_set_color(c_black); 
		if(current_time < ms_agora+1000){
			draw_text_transformed(wgui, hgui + 2 , "Loading", 2,1.5,image_angle)
		}else if(current_time > ms_agora+4000){ //1000ms = 1s
			instance_activate_all();
			surface_free(paused_surf);
			paused_surf = -1;
			room_goto_next();
		}else if(current_time > ms_agora+3000){
			draw_text_transformed(wgui, hgui + 2 , "Loading...", 2,1.5,image_angle)
		}else if(current_time > ms_agora+2000){
			draw_text_transformed(wgui, hgui + 2 , "Loading..", 2,1.5,image_angle)
		}else if(current_time > ms_agora+1000){
			draw_text_transformed(wgui, hgui + 2 , "Loading.", 2,1.5,image_angle)
		}
		
		draw_set_valign(-1);
		draw_set_halign(-1);
		draw_set_font(-1); 
	}
}
