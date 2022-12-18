/// @description Insert description here
// You can write your code in this editor


draw_rectangle_color(obj_jogador.x-w_half,obj_jogador.y+h_half,obj_jogador.x+w_half,obj_jogador.y+h_half- 5, c_black,c_black,c_black,c_black,false);

draw_rectangle_color(obj_jogador.x-w_half,obj_jogador.y+h_half,
					obj_jogador.x-w_half+(xp/ maxXP * 635),obj_jogador.y+h_half- 5,
					c_aqua,c_aqua,c_aqua,c_aqua,false);

//draw_rectangle_color(x, y+50, x+300, y+60, c_black,c_black,c_black,c_black,false);

//draw_rectangle_color(x, y+50, x+ (xp/ maxXP * 300), y+60,c_aqua,c_aqua,c_aqua,c_aqua,false);



draw_rectangle_color(obj_jogador.x-20,obj_jogador.y+25,obj_jogador.x+20,obj_jogador.y+30, c_black,c_black,c_black,c_black,false)

draw_rectangle_color(obj_jogador.x-20,obj_jogador.y+25,(obj_jogador.x-20)+hp,obj_jogador.y+30, c_blue,c_blue,c_blue,c_blue,false)
