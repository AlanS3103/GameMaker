/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if keyboard_check(vk_escape){
	game_end();
}

#region Teclas/Comandos
right	= keyboard_check(ord("D")) or keyboard_check(vk_right);
up		= keyboard_check(ord("W")) or keyboard_check(vk_up);
left	= keyboard_check(ord("A")) or keyboard_check(vk_left);
down	= keyboard_check(ord("S")) or keyboard_check(vk_down);


#endregion

#region Visto pelo inimigo
if position_meeting(x, y, obj_flashlight_area){
	obj_inimigo.visto = true
}else{
	obj_inimigo.visto = false
}

#endregion

if vida == 0{
	game_end();
}

show_debug_message(vida);

#region Movimentação

script_execute(state);

/*
	var _xx = right - left;
	var _yy = down - up;
	
	if _xx != 0 or _yy != 0{
		dir = point_direction(x, y, x + _xx, y + _yy);
		
		hspd = lengthdir_x(spd, dir)
		vspd = lengthdir_y(spd, dir)
	}else{
		hspd = 0;
		vspd = 0;
	}
	
	switch floor(dir/90){
		default:
			sprite_index = spr_player_right;
		break;
		case 1:
			sprite_index = spr_player_up;
		break;
		case 2:
			sprite_index = spr_player_left;
		break;
		case 3:
			sprite_index = spr_player_down;
		break;
	}
	
	x += hspd;
	y += vspd;
*/


/* Movimentação antiga
if cima{
	y -= spd;
	image_index = 0
}
if baixo{
	y += spd;
	image_index = 1
}
if esquerda{
	x -= spd;
	image_index = 2
}
if direita{
	x += spd;
	image_index = 3
}
*/

#endregion