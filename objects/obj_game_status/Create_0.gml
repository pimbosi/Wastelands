/// @description Insert description here
// You can write your code in this editor

globalvar lvl; //Nível do personagem
lvl = 1;

globalvar xp; //Xp inicial do personagem
xp = 0;

globalvar maxXP; //Xp máximo
maxXP = (30 + (lvl * 100) - 20);//Formula que calcula o número total de xp necessário pra passar de nível

globalvar maxHp;
maxHp = 40;

globalvar hp; //Vida do personagem principal
hp = 40

//Indicador das fases
globalvar Fase01; //Fase 01
Fase01 = false;
if (room == 0){Fase01 = true; }

globalvar Fase02; //Fase 02
Fase02 = false;
if (room == 1){Fase02 = true;}

globalvar Fase03; //Fase 03
Fase03 = false;
if(room == 2){
	Fase03 = true;
}

globalvar inimigoMorto;
inimigoMorto = false;

globalvar numeroDeMortos;
numeroDeMortos = 0;

global.loja_compras_finalizadas = 0

timer_xp = 20;
alarm[0] = timer_xp;

nivel_max = 0
for(x=0;x<array_length(global.powers);x++){
	nivel_max += global.powers[x][4]
}

