// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function PesquisaIventario(esclhd_Id){
  for(var i = 0; i < global.countIventario; i+=1){
      if(global.inventario[|i] == esclhd_Id){
	   return(i);
	  }
   }
   return(-1);
}
