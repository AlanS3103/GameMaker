// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_screenshake(_amount, _force){
	with(obj_screenshake){
		shake = true;
		shake_timer = _amount;
		shake_force = _force;
	}
}