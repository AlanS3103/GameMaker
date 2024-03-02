/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();

if dano == true {
	clock --;
	draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_red, irandom_range(0.0, 1.0))
		
	if clock <= 0{
		clock = room_speed * 0.5;
		dano = false;
	}
	
}







