// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

/*function scr_enemy_moving(){
	dir = point_direction(x, y, obj_player.x, obj_player.y);
	hspd = lengthdir_x(spd, dir);
	vspd = lengthdir_y(spd, dir);
	
	image_angle = dir;
	
	x += hspd;
	y += vspd;
}
*/

function scr_enemy_patrol_path(){
	
	dist = point_distance(x, y, destino_xx, destino_yy);
	
	instance_create_layer(destino_xx, destino_yy, "Instances", obj_destino)
	
	if !place_meeting(obj_destino.x, obj_destino.y, obj_parede){
		if dist < 5 {
			destino_xx = irandom_range(200, 500);
			destino_yy = irandom_range(200, 500);
		}
	} else {
		destino_xx = irandom_range(200, 500);
		destino_yy = irandom_range(200, 500);
	}
	
	//show_debug_message(dist)
	
	dir = point_direction(x, y, destino_xx, destino_yy);
	
	if mp_grid_path(obj_pathfinding.path_grid, path, x, y, destino_xx, destino_yy, true){
		path_start(path, spd, path_action_stop, false);
		
	}
	
	if dist <= 10 {
		opcao = choose(0, 2);
	}
		
	image_angle = dir;
	
	instance_destroy(obj_destino)
}


//Movimentação com pathfinding
function scr_enemy_chasing_path(){
	dir = point_direction(x, y, destino_x, destino_y);
	
	if mp_grid_path(obj_pathfinding.path_grid, path, x, y, destino_x, destino_y, true){
		path_start(path, spd, path_action_stop, false);
		
		image_angle = dir
		
	}
	
	dist = point_distance(x, y, destino_x, destino_y);
	
	if dist <= 2 {
		opcao = 0;
	}
	
}


function scr_enemy_single_shoot(){
	var _inst = instance_create_layer(x, y, layer, obj_bala_inimigo);
	_inst.dir = point_direction(x, y, obj_player.x, obj_player.y);
	audio_play_sound(snd_308_Single, 1, false, .3);
	
}


/* Funções de ataques para atualizações futuras

function scr_enemy_double_shoot(){
	show_debug_message(double_shoot_time)
	
	audio_play_sound(snd_308_Double_Tap, 1, false, 1, 0);
	var _inst = instance_create_layer(x, y, layer, obj_bala_inimigo);
	
	if _inst{
		var _inst2 = instance_create_layer(x, y, layer, obj_bala_inimigo);
		double_shoot_time = room_speed * 0.5
	}
	
	_inst.dir = point_direction(x, y, obj_player.x, obj_player.y);
	_inst2.dir = point_direction(x, y, obj_player.x, obj_player.y);
	
	
}


function scr_enemy_spray_shoot(){
	var _inst = instance_create_layer(x, y, layer, obj_bala_inimigo);
	_inst.dir = point_direction(x, y, obj_player.x, obj_player.y);
	audio_play_sound(snd_308_Single, 1, false, 1, 0);
	
}

*/