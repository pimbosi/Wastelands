if paused == true
{
if !surface_exists(paused_surf)
    {
    if paused_surf == -1
        {
        instance_deactivate_all(true);
        }
    paused_surf = surface_create(room_width, room_height);
    surface_set_target(paused_surf);
    draw_surface(application_surface, 0, 0);
    surface_reset_target();
	
}else{
	
	
    draw_surface(paused_surf, 0, 0);
    draw_set_alpha(0.5);
	draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);

	draw_set_color(c_green)
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	
	wgui = display_get_gui_width()
	hgui = display_get_gui_height()	
	
	draw_sprite(spr_menu_loja_bg, -1, wgui/2-180, hgui/2-200)
	
	draw_set_color(noone)
	for(var i = 0; i < poderes_escolhidos;i++){
	
		hp = string_height(global.chosen_ones[i][0])*ss+3
		wp = string_width(global.chosen_ones[i][0])*ss+3

		mx = device_mouse_x_to_gui(0)
		my = device_mouse_y_to_gui(0)
		
		x1 = wgui/2 - wp/2
		y1 = hgui/2+30 - hp/2 + hp*i
		
		x2 = wgui/2 + wp/2
		y2 = hgui/2+30 + hp/2 + hp*i
		
		if(point_in_rectangle(mx, my, x1, y1, x2, y2)){
			draw_set_font(f_tn)
			draw_set_color(c_black)
			msg = global.chosen_ones[i][1]
			draw_text_transformed(wgui/2, hgui/2-150, msg, 1,1,image_angle)
			msg = "Nivel atual da habilidade: " + string(global.chosen_ones[i][3])
			draw_text_transformed(wgui/2, hgui/2-150+string_height("I"),
									msg, 1,1,image_angle)
			draw_set_color(noone)
			
			draw_sprite(global.chosen_ones[i][2], -1, wgui/2-10, hgui/2-60)
			
			ss = 4.5
			
			if(mouse_check_button(mb_left))
			{
				
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
			
		}else{
			ss = 4
		}
		
		draw_set_font(bitmap_font)
		msg = global.chosen_ones[i][0]
		draw_text_transformed(wgui/2, hgui/2+30 + hp*i, msg,ss, ss,image_angle);
							
	}
	draw_set_valign(-1)
	draw_set_halign(-1);
	
    }
}