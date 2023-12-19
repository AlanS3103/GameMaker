// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_enemy_moving(){
	dir = point_direction(x, y, obj_player.x, obj_player.y);
	hspd = lengthdir_x(spd, dir);
	vspd = lengthdir_y(spd, dir);
	
	image_angle = dir;
	
	x += hspd;
	y += vspd;
}


function scr_enemy_patrol(){
	
	dist = point_distance(x, y, destino_x, destino_y);
	
	if dist < 10 {
		destino_x = irandom_range(200, 500);
		destino_y = irandom_range(200, 500);
	}
	
	//show_debug_message("Dist: " + string(dist) + " DX: " + string(destino_x) + " DY: " + string(destino_y));
	
	dir = point_direction(x, y, destino_x, destino_y);
	
	
	hspd = lengthdir_x(spd, dir);
	vspd = lengthdir_y(spd, dir);
	
	x += hspd;
	y += vspd;
	
	//espera = 0;
	
	image_angle = dir;
}


// Usar Path Finding ou outro jeito de movimentação e tbm colocar os sprites com direção certa


//Movimentação com pathfinding
function scr_enemy_moving_path(){
	dir = point_direction(x, y, obj_player.x, obj_player.y);
	
	if mp_grid_path(obj_pathfinding.path_grid, path, x, y, destino_x, destino_y, true){
		path_start(path, spd, path_action_stop, false);
		
		
		image_angle = dir
		/*
		switch floor(dir/90){
			default:
				sprite_index = spr_inimigo_right;
			break;
			case 1:
				sprite_index = spr_inimigo_up;
			break;
			case 2:
				sprite_index = spr_inimigo_left;
			break;
			case 3:
				sprite_index = spr_inimigo_down;
			break;
		}*/
		
	}else{
		path_end();
	}
}


function scr_enemy_shoot(){
	
	var _inst = instance_create_layer(x, y, layer, obj_bala_inimigo);
	_inst.dir = point_direction(x, y, obj_player.x, obj_player.y);
	
}

