/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
destino_x = x;
destino_y = y;

hspd = -1;
vspd = -1;
dir = -1;

opcao = [0, 1, 2];

spd = random_range(1.5, 2);

path = path_add();

cd_attack = 180;

visto = false

espera = 0

flashlight_area = instance_create_layer(x, y, layer, obj_flashlight_area);
flashlight_area.guard = id;


