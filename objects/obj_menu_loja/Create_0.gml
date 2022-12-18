paused = false;
poderes_escolhidos = 0
paused_surf = -1;
map_string = " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRS" +
			 "TUVXYWZ[\\]^_`abcdefghijklmnopqrstuvwxyz(|)~"
bitmap_font = font_add_sprite_ext(spr_font_menu_loja, map_string, false, 0)
ss=4

//randomize()

function array_get_value(searchArray, findValue){
	i = 0
	while(i < array_length(searchArray)){
		if(searchArray[i] == findValue){
			return i
		}	
		i++
	}
	return -1
}
