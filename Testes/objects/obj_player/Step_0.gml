/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if keyboard_check(vk_escape){
	game_end();
}

if keyboard_check(ord("R")){
	room_restart();
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


if global.life == 0{
	global.morto = true;
	room_goto(RoomGameOver);
}


#region Movimentação
script_execute(scr_player_moving);

#endregion
