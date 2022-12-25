/// @description Insert description here
// You can write your code in this editor

//Desenhando a barra de xp
draw_healthbar(obj_jogador.x-555, obj_jogador.y-360, obj_jogador.x+555, obj_jogador.y-350, xpNoMomento, c_black, c_aqua, c_aqua, 0, true, true);

//Desenhando os indicadores de level, experiência e xp target para melhor compreensão do fincionamento
draw_text_color(obj_jogador.x-500,obj_jogador.y-300,string("Level: ") + string(lvl),c_white,c_white,c_white,c_white,1);
draw_text_color(obj_jogador.x-500,obj_jogador.y-285,string("Expirênce: ") + string(xp),c_white,c_white,c_white,c_white,1);
draw_text_color(obj_jogador.x-500,obj_jogador.y-265,string("XP Target: ") + string(maxXP),c_white,c_white,c_white,c_white,1);

//Desenhando a barra de vida
draw_rectangle_color(obj_jogador.x-20,obj_jogador.y+25,obj_jogador.x+20,obj_jogador.y+30, c_black,c_black,c_black,c_black,false)
draw_rectangle_color(obj_jogador.x-20,obj_jogador.y+25,(obj_jogador.x-20)+hp,obj_jogador.y+30, c_blue,c_blue,c_blue,c_blue,false)
