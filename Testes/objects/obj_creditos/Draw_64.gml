/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_font(fnt_menu);

var dist = 15;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura / 2;
var y1 = gui_altura / 2;


if keyboard_check_pressed(vk_enter){
	game_restart();
	global.fragmentos = 0;
}
if keyboard_check(vk_escape){
	game_end()
}
	
instance_destroy(obj_player);
	
draw_set_alpha(.5);
draw_set_color(c_black);
draw_rectangle(0,0,gui_largura,gui_altura,false);
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x1, y1 * 0.1, "CREDITOS");
	
for (var i = 0; i < array_length(controles2); i ++){
	draw_set_halign(fa_left);
	draw_set_valign(fa_left);
		
	draw_text(x1 * 0.05, y1 * 1.8 + (20 * i),controles2[i]);
}

for (var i = 0; i < array_length(creditos); i ++){
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
		
	draw_text(x1, y1 * 0.5 + (15 * i),creditos[i]);
}
	
draw_set_halign(-1);
draw_set_valign(-1);










