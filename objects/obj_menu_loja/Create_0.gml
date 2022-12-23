paused = false;
poderes_escolhidos = 0
paused_surf = -1;

//Backgroud menu
menu_width = 414 //Largura do menu
menu_height = 470 //Altura do menu

//Background das opções
bg_opcao_width = 390 //Largura da sprite de fundo das opções
bg_opcao_height = 100 //Altura da sprite de fundo das opções
bg_opcao_space = 100 //Espaçamento entre as sprites das opções

//Background dos poderes
bg_poderes_width = 90 //Largura da sprite de fundo dos poderes
bg_poderes_height = 82 //Altura da sprite de fundo dos poderes

//Poderes
poderes_width = 30 //Largura da sprite dos poderes
poderes_height = 30 //Altura da sprite dos poderes

op_border = 50 //Distância da borda até as letras
op_space = 50 //Espaçamento entre as linhas

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
