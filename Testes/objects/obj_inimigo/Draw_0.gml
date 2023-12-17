/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self()
draw_set_color(c_red);
draw_line(x, y, obj_player.x, obj_player.y);

draw_text(x, y - 20, "x =" + string(xx) + ", y =" + string(yy))

if visto == true{
	draw_text(x, y, "HEYY")
}


draw_line(x, y, obj_player.x, obj_player.y);
draw_path(path, x, y, true);