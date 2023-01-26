#region variaveis movimentacao
//andar

walkspeed = 2;
//teste
#endregion

//variaveis para a colisão com o mapa

tilemap = layer_tilemap_get_id("Collision")

#region intervalo dos atks
//intervalo dos atks

alarmtime[0] = 120; //melee

alarmtime[1] = 1; //machado

alarmtime[2] = 1; //bola de fogo

alarmtime[3] = 1; //facas

alarm[0] = alarmtime[0]; //melee

alarm[1] = alarmtime[1]; //machado

alarm[2] = alarmtime[2]; //bola de fogo

alarm[3] = alarmtime[3]; //facas

weapon_cooldown[4] = 3;

alarm[4] = weapon_cooldown[4];

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
	["Machado","Atira machados", spr_axe, 0, 5], 
	["Faca","Atira no inimigo mais próximo", spr_faca, 0, 5],
	["Murasame","Hit kill. Ataque lento", spr_melee, 0, 5],
	["Bola de gelo", "Dano e atrasa os inimigos", spr_bola_de_gelo, 0, 5],
	]

melee_dmg = 4;
axe_dmg = 8;
fireball_dmg = 6;
faca_dmg = 5;

weapon_cooldown[0] = 2;

repeticao_axe = 1

collectRadius = 50;  //Raio do círculo de coleta de xp

hitpoints = 20    // hp do personagem



