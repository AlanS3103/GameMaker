// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_player_moving(){
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
	/*
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
	}*/
	
	if place_meeting(x + hspd, y, obj_parede){
		hspd = 0;
	}
	if place_meeting(x, y + vspd, obj_parede){
		vspd = 0;
	}
	
	x += hspd;
	y += vspd;
	image_angle = dir;
	if hspd != 0 or vspd != 0{
		sprite_index = spr_player_moving;
	} else {
		sprite_index = spr_player_iddle;
	}
	
	
}