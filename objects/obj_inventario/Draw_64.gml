
xc = 1060 

for(xx = 0; xx < array_length(global.inventario);xx++){
	draw_sprite(global.inventario[xx][2], -1, x-xc, y-40);
	//show_message(global.inventario[xx][0])
	xc-= 80
}