
xc = 1045 //Posição da primeira sprite de funco do iventário
xd = 1042 //Posição da primeira sprite do poder

for(xx = 0; xx < array_length(global.inventario);xx++){	
	
	draw_sprite_ext(spr_bg_poderes,image_index, x-xc, y+59, 39/sprite_width, 39/sprite_height, 0, c_white,1);
	
	sprite = global.inventario[xx][2];
	draw_sprite_ext(sprite, 0, x-xd, y+60, largura_sprPoderes/sprite_width, Altura_sprPoderes/sprite_height, 0, c_white,1);
	//show_message(global.inventario[xx][0])
	xc -= 45   //Distância entre a sprite de fundo
	xd -= 45  //DistÂncia entre a sprite do poder
	
}