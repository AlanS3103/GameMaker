/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if obj_portal.ativado == true and room != Room2{
	room_goto_next()
	global.fragmentos = 0
}

if obj_portal.ativado == true and room == Room2{
	game_restart()
	global.fragmentos = 0
}








