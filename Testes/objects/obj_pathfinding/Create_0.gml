/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

cell_size = 32;											//Tamanho de cada célula do seu grid/tiles
ch = room_width/cell_size;								//Quantas células tem na horizontal
cv = room_height/cell_size;								//Quantas células tem na vertical

path_grid = mp_grid_create(0, 0, ch, cv, cell_size, cell_size);
mp_grid_add_instances(path_grid, obj_parede, false);	//Qual objeto você quer evitar de colidir com







