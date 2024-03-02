/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

instance_create_layer(x, y, "Instances", obj_bala_inimigo_exploding)
global.life -= 1;
obj_player.dano = true;
var _hspd = lengthdir_x(2, dir + 180);
var _vspd = lengthdir_y(2, dir + 180);

obj_player.x -= _hspd;
obj_player.y -= _vspd;

instance_destroy();

choose(	audio_play_sound(Dinosaur_Bellow2, 1, false, .5),
		audio_play_sound(Dinosaur_SoftGrowl4, 1, false, .5),
		audio_play_sound(Dinosaur_SoftGrowl5, 1, false, .5))







