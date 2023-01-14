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

global.inventario = []
 //poderes
//Ordem = 0 Nome, 1 Descricao, 2 sprite, 3 nível, 4...,
global.powers = [
	["Bola de fogo","Lança bolas de fogo", spr_fireball, 0, 5], 
	["Machado","Atira machados", spr_axe, 0, 5, 2], 
	["Faca","Atira no inimigo mais próximo", spr_faca, 0, 5],
	["Murasame","Hit kill. Ataque lento", spr_melee, 0, 5],
	["Bola de gelo", "Dano e atrasa os inimigos", spr_bola_de_gelo, 0, 5],
	["power 5","power 5 info", spr_fireball, 0, 5],
	["power 6","power 6 info", spr_melee, 0, 6],
	["power 7","power 7 info", spr_fireball, 0, 3]  
		]
array_push(global.powers, ["Power 8","P8", spr_fireball, 0,5])

melee0 = 0;
melee_up = 0;
axe_up = 0;
fireball_up = 0;
faca_up = 0;

melee_dmg = 5 + melee_up;
axe_dmg = 30;
fireball_dmg = 15 + fireball_up;
faca_dmg = 5 + faca_up;

collectRadius = 50;  //Raio do círculo de coleta de xp


