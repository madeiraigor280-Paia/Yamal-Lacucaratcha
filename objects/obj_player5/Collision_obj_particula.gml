//visão de que tomou dano desde que não seja do próprio tiro
if(global.facil) exit;
if(other.pode_colidir==true) {
	image_blend = c_red;
	alarm [1] = 5;
}