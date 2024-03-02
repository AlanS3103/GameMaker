/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



if global.fragmentos = 3 {
	sprite_index = spr_portal_ativado;
	ativado = true
}

if obj_portal.ativado == true{
		light[| eLight.X] = obj_portal.x;
		light[| eLight.Y] = obj_portal.y;
}

/*

if obj_portal.sprite_index == spr_portal_ativado and ativado == false{
		instance_create_layer(obj_portal.x, obj_portal.y, "Instances", obj_light)
		obj_portal.ativado = true;
	}
	
	if obj_portal.ativado == true{
		light[| eLight.X] = obj_portal.x;
		light[| eLight.Y] = obj_portal.y;
		
		light[| eLight.X] = obj_player.x;
		light[| eLight.Y] = obj_player.y;
	
	}else{
	light[| eLight.X] = obj_player.x;
	light[| eLight.Y] = obj_player.y;
	}

*/





