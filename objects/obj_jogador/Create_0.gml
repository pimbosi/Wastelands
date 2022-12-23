#region variaveis movimentacao
//andar

walkspeed = 2;
//teste
#endregion

#region intervalo dos atks
//intervalo dos atks

alarmtime[0] = 120; //melee

alarmtime[1] = 1; //machado

alarmtime[2] = 1; //bola de fogo

alarmtime[3] = 30; //facas

alarm[0] = alarmtime[0]; //melee

alarm[1] = alarmtime[1]; //machado

alarm[2] = alarmtime[2]; //bola de fogo

alarm[3] = alarmtime[3]; //facas

slot[0] = "melee";
slot[1] = "axe";
slot[2] = "fireball";
slot[3] = "faca"

#endregion 

#region poderes na loja
 
 //poderes
global.powers = [
	["Bola de fogo","Lança bolas fogo", spr_fireball, 0, 5], //nome, descricao, sprite, nivel inical, nivel máximo
	["Machado","Atira machados", spr_axe, 0, 5], 
	["Murasame","Hit kill. Ataque lento", spr_melee, 0, 5],
	["Faca", "Atira facas", Sprite9, 0, 5],
	["power 4","power 4 info", spr_axe, 0, 5],
	["power 5","power 5 info", spr_fireball, 0, 5],
	["power 6","power 6 info", spr_melee, 0, 6],
	["power 7","power 7 info", spr_fireball, 0,3]  
		]
array_push(global.powers, ["Power 8","P8", spr_fireball, 0,5])

<<<<<<< Updated upstream
//dano dos poderes

melee_dmg = 5;
axe_dmg = 30;
fireball_dmg = 15;
faca_dmg = 5;

#endregion

=======
//dano dos ataques
melee_dmg = 5;
axe_dmg = 30;
fireball_dmg = 15;
>>>>>>> Stashed changes
