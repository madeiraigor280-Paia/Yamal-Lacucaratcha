#region move
key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_jump = keyboard_check(vk_space)

var move = key_right - key_left

hspd = move * spd
vspd = vspd + grv

if hspd != 0 image_xscale = sign(hspd)

if place_meeting(x + hspd, y, obj_chao){
	while !place_meeting(x + sign(hspd), y, obj_chao){
		x = x + sign(hspd)
	}	
	hspd = 0;
}
x += hspd

if place_meeting(x, y + vspd, obj_chao){
	while !place_meeting(x, y + sign(vspd), obj_chao){
		y = y + sign(vspd)
	}
	vspd = 0
}
y += vspd

if place_meeting(x, y + 1, obj_chao) and key_jump{
	vspd -= 12
}





#endregion


#region colisão
if keyboard_check(vk_escape){
	game_end()	
}

if mouse_check_button(mb_left) and tiro<0{
	instance_create_depth(obj_player3.x, obj_player3.y, -1, obj_tiro_player)
	tiro = 10
		
}

tiro = tiro - 1

if place_meeting(x, y, obj_tiro_boss){
	sprite_index = spr_player_hit2
	
}
else
{
	sprite_index = spr_player	
}

if place_meeting(x, y, obj_fall){
	sprite_index = spr_player_hit2
	
}
else
{
	sprite_index = spr_player	
}

if keyboard_check(ord("R")){
	game_restart();
}

#endregion


#region dialogo
if distance_to_object(obj_par_npcs) <= 10 {

	if global.tecla and global.dialogo == false {	
			var _npc = instance_nearest(x, y, obj_par_npcs);
			var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
			_dialogo.npc_nome = _npc.nome;
		
	}
	
	
}


#endregion