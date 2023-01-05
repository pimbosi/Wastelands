
xc = 1045 //Posição da primeira sprite de fundo do inventário
xd = 1028 //Posição da primeira sprite do poder


xi = 0
y2 = 75
y3 = 60

for(xx = 0; xx < array_length(global.inventario);xx++){	
	
	draw_sprite_ext(spr_bg_poderes,image_index, x-xc, y+y3, 39/sprite_width, 39/sprite_height, 0, c_white,1);
	
	sprite = global.inventario[xx][2];
	draw_sprite_ext(sprite, 0, x-xd, y+y2, largura_sprPoderes/sprite_width, Altura_sprPoderes/sprite_height, 0, c_white,1);
	xc -= 45   //Distância entre a sprite de fundo
	xd -= 45  //DistÂncia entre a sprite do poder
	
	xi++
	
	if(xi == 4){
		xi = 0
		//diminui o y
		y2+=40
		y3 +=40
		xd=1028
		xc=1045
	}
	
}