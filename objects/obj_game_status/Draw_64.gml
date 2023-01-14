xpNoMomento = ((xp/maxXP)*100); 
/*Variável que indica em porcentagem o tanto de xp 
  que o personagem tem no exato momento
  utilizado para a criação da barra de xp*/
//Desenhando a barra de xp
draw_healthbar(x-410, y-250, x+700, y-240, xpNoMomento, c_black, c_aqua, c_aqua, 0, true, true);

//Desenhando os indicadores de level, experiência e xp target para melhor compreensão do fincionamento
draw_text_color(x+390,y-220,string("Level: ") + string(lvl),c_white,c_white,c_white,c_white,1);
draw_text_color(x+390,y-205,string("Expirênce: ") + string(xp),c_white,c_white,c_white,c_white,1);
draw_text_color(x+390,y-190,string("XP Target: ") + string(maxXP),c_white,c_white,c_white,c_white,1);
