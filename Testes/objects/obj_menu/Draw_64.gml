/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_set_font(fnt_menu);

var dist = 15;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura / 2;
var y1 = gui_altura / 2;

for(var i = 0; i < op_max; i++){
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	if(index == i){
		draw_set_color(c_yellow)
	}else{
		draw_set_color(c_white)
	}
	
	draw_text(x1, y1 + (dist * i),opcoes[i]);
	
}

draw_set_color(c_white);
for (var a = 0; a < array_length(personal); a ++){
	draw_set_halign(fa_left);
	draw_set_valign(fa_left);
		
	draw_text(x1 * 0.05, y1 * 0.05 + (20 * a),personal[a]);
}

for (var a = 0; a < array_length(controles); a ++){
	draw_set_halign(fa_right);
	draw_set_valign(fa_right);
		
	draw_text(x1 * 1.95, y1 * 1.9 + (20 * a),controles[a]);
}

draw_set_font(-1);




