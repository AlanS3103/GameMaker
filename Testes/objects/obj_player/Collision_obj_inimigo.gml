/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _dir = point_direction(x, y, obj_inimigo.x, obj_inimigo.y)

var _hspd = lengthdir_x(25, _dir + 180);
var _vspd = lengthdir_y(25, _dir + 180);

x += _hspd;
y += _vspd;

obj_inimigo.x -= _hspd;
obj_inimigo.y -= _vspd;

choose(	audio_play_sound(Dinosaur_Bellow2, 1, false, .5),
		audio_play_sound(Dinosaur_SoftGrowl4, 1, false, .5),
		audio_play_sound(Dinosaur_SoftGrowl5, 1, false, .5))

dano = true;
global.life -= 1;


