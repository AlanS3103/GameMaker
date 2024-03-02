/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if room != Room0Menu and room != RoomGameOver and room != RoomEndGame{
	
		light[| eLight.X] = obj_player.x;
		light[| eLight.Y] = obj_player.y;
	
	
} else {
	light[| eLight.X] = mouse_x;
	light[| eLight.Y] = mouse_y;
}







