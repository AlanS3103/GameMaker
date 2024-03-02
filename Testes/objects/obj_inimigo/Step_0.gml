/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

cd_attack--;


if visto == true {
	destino_x = obj_player.x;
	destino_y = obj_player.y;
	
	opcao = 1;
}

//Movientação
switch opcao{
	case 0:
		sprite_index = spr_inimigo_iddle;
		
		hspd = 0;
		vspd = 0;
		
		x += hspd;
		y += vspd;
		
		
		
		if time == 0 {
			opcao = choose(0,2);
			time = room_speed * 2;
			
		}
		time -= 1;
		
		
	break;
	case 1:
		script_execute(scr_enemy_chasing_path);
		sprite_index = spr_inimigo_shooting;
		
	break;
	case 2:
		script_execute(scr_enemy_patrol_path);
		sprite_index = spr_inimigo_moving;
	break;
/*	case...:
		ssss
	break;
*/

}


//Ataque

if cd_attack <= 0 and visto == true{
	script_execute(single_shoot);
	
	cd_attack = 180;
}

//atacar quando o player estive perto

//xx = (obj_inimigo.x - obj_player.x)
//yy = (obj_inimigo.y - obj_player.y) 

/*
area_visao = 100;


if collision_circle(x, y, area_visao, obj_player, true, true){
	visto = true
	//for (var os = 0; os < 10; os += 1){
		//instance_create_layer(x, y, "Balas", obj_bala)
	//}
} else {
	visto = false
}
*/


//px = instance_nearest(x, y, obj_player).x;
//py = instance_nearest(x, y, obj_player).y;

//direction = point_direction(x, y, px, py)

