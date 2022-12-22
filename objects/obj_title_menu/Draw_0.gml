//Criando o background do menu
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white,1);

//Desenhando as opções
draw_set_font(global.font_main);
draw_set_valign(fa_top); // Alinhamento vertical das letras (em cima)
draw_set_halign(fa_left); // Alinhamento horizontal das letras (a esquerda)

/*Loop para desenhar as letras
A variável i começa de 0 e vai até o número total de letra 
da frase/palavra*/
for(var i = 0; i < op_lenth; i++){   
	var _c = c_white; //Cor da letra
	if pos == i { _c = c_orange }; //Mudando a cor da letra selecionadas
	draw_text_color(x+op_border, y+op_border + op_space*i, option[i], _c, _c, _c, _c, 1);
    /* Coordenada x + o espaço entre a borda e a letra,
	 coordenada y + o espaço entre a borda e a letra
	 + o espaço * por i para quebrar a linha,
	 e por último o array contendo as frases/palavras */
}