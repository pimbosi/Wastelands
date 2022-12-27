//Controlando se o jogo está pausado ou não
paused = false; //Jogo inicialmente não está pausado
//Controle interno para verificar de a loja está aberta ou não
lojaOpen = false; //Loja inicialmente fechado
poderes_escolhidos = 0 //Quantidade de poderes escolhidos, inicialmente 0
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

//Controle do iventário
globalvar FlagMachado; //Criando a Flag do machado
FlagMachado = false; //FlagMachado desativada
globalvar FlagBolaDeFogo; //Criando a Flag da bola de fogo
FlagBolaDeFogo = false; //Flag da Bola de fogo desativada
globalvar FlagFaca; //Criando a Flag da faca
FlagFaca = false; //Flag da faca desativada



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
