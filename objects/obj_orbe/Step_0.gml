/// @description orbitar jogador

// Inherit the parent event
event_inherited();

dmg = obj_jogador.orbe_dmg;

//Distancia da orbita ao jogador
var distancia = 50;

//Incrementa no angulo da orbita = velocidade
angulo_orbita += 1.5;

//Usar a variavel distancia como a distancia da orbita
var orbita_distancia = distancia;

//Calcular o ponto da orbita no angulo atual
var orbita_x = obj_jogador.x + lengthdir_x(orbita_distancia, angulo_orbita);
var orbita_y = obj_jogador.y + lengthdir_y(orbita_distancia, angulo_orbita);

//Mover
x = orbita_x;
y = orbita_y;
