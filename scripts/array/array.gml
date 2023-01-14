// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//procura por um determinado valor em um array
//retorna um int referente à posicao do valor no array caso encontrado
//se n for encontrado retorna -1
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