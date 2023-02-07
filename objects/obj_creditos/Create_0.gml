/// @description Insert description here
// You can write your code in this editor
blck_width = 1130 //Largura da sprite black mask
blck_height = 745 //Altura da sprite black mask
posicao = - 370
posicaoBlck = 900
creditos = ["CRÉDITOS", 
            "Mateus Santos Negrini", "G. Augusto V. V. Rocha", "Marcelo Alves",
			"Felipe Rodrigues", "Murilo Brandão de Souza Rodrigues",
		    "Artur Bartz","Gabriel Maciel",
		    "SPRITES:", 
			"Sonild", "Luiz Melo", "Penusbmic", "RiLi XL",
			"Clembod", "MidJourney I.A", "Sven", "Nyknck", "SciGho","Joraxus",
			"TILE SETS:", 
			"Cainos", "Anima Nel","Petricake Games", "SciGho",
			"MÚSICAS:","Jeux D'eau"];
dist = 50;
tamanhoMax = array_length(creditos);

ms_agora = current_time
comeco = ms_agora+2400
fim = ms_agora+15400
/*
for(var i = 0; i < tamanhoMax; i++){
   
   draw_text_transformed(wgui, hgui + (dist*i) , creditos[i], 1.5,1.5,image_angle)
}
*/