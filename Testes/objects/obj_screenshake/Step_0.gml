/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if shake == true{
	shake_timer--;
	
	if shake_timer >= 0{
		//Alterar a câmera para tremer
		camera_set_view_pos(view_camera[0], irandom_range(-shake_force, shake_force), irandom_range(-shake_force, shake_force));
	}else{
		shake = false;
		//Retornar a câmera para o ponto de origem
		camera_set_view_pos(view_camera[0], 0, 0);
	}
}