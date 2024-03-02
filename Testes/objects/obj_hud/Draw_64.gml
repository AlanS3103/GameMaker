/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_font(fnt_menu);

var dist = 15;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura / 2;
var y1 = gui_altura / 2;



draw_set_alpha(.5);
draw_sprite(spr_fragmento, 0, x1 * 1.95, y1 * 0.10)
draw_text(x1 * 1.95, y1 * 0.20, string(global.fragmentos) + "/3")

if global.life == 4{
	draw_sprite(spr_life, 4, x1, y1 * 0.05)
}
if global.life == 3{
	draw_sprite(spr_life, 3, x1, y1 * 0.05)
}
if global.life == 2{
	draw_sprite(spr_life, 2, x1, y1 * 0.05)
}
if global.life == 1{
	draw_sprite(spr_life, 1, x1, y1 * 0.05)
}
if global.life == 0{
	draw_sprite(spr_life, 0, x1, y1 * 0.05)
}
draw_set_alpha(1);

if global.morto == true {
	if keyboard_check(vk_enter){
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
	draw_text(x1, y1 * 0.75, "VOCÊ MORREU!!");
	
	for (var i = 0; i < array_length(controles2); i ++){
		draw_set_halign(fa_left);
		draw_set_valign(fa_left);
		
		draw_text(x1 * 0.05, y1 * 1.8 + (20 * i),controles2[i]);
	}

	for (var i = 0; i < array_length(personal); i ++){
		draw_set_halign(fa_left);
		draw_set_valign(fa_left);
		
		draw_text(x1 * 0.05, y1 * 0.05 + (20 * i),personal[i]);
	}
	
	draw_set_halign(-1);
	draw_set_valign(-1);
} else {


	draw_set_color(c_gray);

	for (var i = 0; i < array_length(personal); i ++){
		draw_set_halign(fa_left);
		draw_set_valign(fa_left);
		
		draw_text(x1 * 0.05, y1 * 0.05 + (20 * i),personal[i]);
	}

	for (var i = 0; i < array_length(controles); i ++){
		draw_set_halign(fa_left);
		draw_set_valign(fa_left);
		
		draw_text(x1 * 0.05, y1 * 1.7 + (20 * i),controles[i]);
	}
}
draw_set_color(c_white);
draw_set_font(-1);









