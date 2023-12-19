/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

instance_create_layer(x, y, "Instances", obj_bala_inimigo_exploding)
obj_player.vida -= 1;
var _hspd = lengthdir_x(2, dir + 180);
var _vspd = lengthdir_y(2, dir + 180);

obj_player.x += _hspd;
obj_player.y += _vspd;

instance_destroy();









