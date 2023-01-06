if(keyboard_check_pressed(vk_escape)){
	
	paused = true; //Jogo despausa
	
	screenShot = sprite_create_from_surface(application_surface,view_xview[0],view_yview[0],view_wview[0],view_hview[0],0,0,0,0)   
    
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
