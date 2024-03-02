/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
event_inherited();
polygon = polygon_from_instance(id);

time = room_speed * 2;

destino_xx = x;
destino_yy = y;

hspd = -1;
vspd = -1;
dir = -1;

opcao = 0;

spd = random_range(1.5, 2);

path = path_add();

cd_attack = 180;

visto = false

single_shoot = scr_enemy_single_shoot;

/* Funções de ataques para atualizações futuras
double_shoot_time = room_speed * 0.5
double_shoot = scr_enemy_double_shoot;


spray_shoot = scr_enemy_spray_shoot;
*/

flashlight_area = instance_create_layer(x, y, layer, obj_flashlight_area);
flashlight_area.guard = id;


