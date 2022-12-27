if(place_meeting(x,y,obj_jogador)){ //Se a maçã encosta no jogador, o xp aumenta e ela é destruída
   xp +=1000; //Aumentando o xp em mais 20
   instance_destroy();//Destruindo a maçã (instancia do objeto (obj_xp))
}