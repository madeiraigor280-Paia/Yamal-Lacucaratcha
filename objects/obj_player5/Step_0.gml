if(instance_exists(obj_levelup)) exit;
//Movimenta player:

//pegando o clique com o botão direito
if(sprite_index==s_player_ataque && image_index>=4.5){
	if(morrendo) return;
	sprite_index=s_player_parado
	atacando = false;
}
x_scl = 1

if (!global.teclado)
{
//movimentando por mouse

    if (mouse_check_button_pressed(mb_right) && !atacando)
    {
        if (morrendo) return;

        if (global.cutcene || global.dialogo) exit;

        move_x = mouse_x;
        move_y = mouse_y;

        if (!instance_exists(obj_mouse_efect))
        {
            instance_create_layer(mouse_x, mouse_y, "Instances", obj_mouse_efect);
        }

        mov_speed = base_speed;
        sprite_index = s_player_run;

        if (move_x < x)
            image_xscale = -x_scl;
        else
            image_xscale = x_scl;

        direcao = image_xscale;

        if (position_meeting(move_x, move_y, obj_colisor))
        {
            mov_speed = 0;
            sprite_index = s_player_parado;
        }
    }

    if (point_distance(x, y, move_x, move_y) <= speed && !atacando)
    {
        if (morrendo) return;

        x = move_x;
        y = move_y;
        speed = 0;
        sprite_index = s_player_parado;
    }
    else
    {
        mp_potential_step_object(move_x, move_y, mov_speed, obj_colisor);
    }
}
else
{
	if (morrendo) return;
	if (global.cutcene || global.dialogo) exit;
// movimentando por teclado

    if (!atacando)
    {
        var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
        var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

        if (h != 0 || v != 0)
        {
            var len = point_distance(0, 0, h, v);

            h /= len;
            v /= len;

            mov_speed = base_speed

            move_and_collide(h * mov_speed, v * mov_speed, obj_colisor);
			
            sprite_index = s_player_run;

            if (h < 0)
            {
                image_xscale = -x_scl;
                direcao = -1;
            }
            else if (h > 0)
            {
                image_xscale = x_scl;
                direcao = 1;
            }
        }
        else
        {
            mov_speed = 0;
            sprite_index = s_player_parado;
        }
    }
}

//Atira com o botão esquerdo:

if(global.pode_atacar==false) exit;
if(mouse_check_button_pressed(mb_left)&&pode_atirar){
	if (morrendo) return;
	if global.cutcene exit
	mov_speed=0;
	
	atacando=true;
	if(mouse_x<x) image_xscale=-x_scl
	else image_xscale=x_scl;
	sprite_index = s_player_ataque;
	image_index = 0;
	image_speed = 1;

	
	// família limitadora de divisões da partícula
	var familia = {
    divisoes: 0,
    max_divisoes: 10
};
	// criando a partícula
	particula=instance_create_layer(x,y,"Particulas",obj_particula);
	audio_play_sound(snd_ataque_player,0,0)
	particula.familia = familia;
	particula.direcao = image_xscale;
	particula.direction = point_direction(x, y, mouse_x, mouse_y);
	particula.speed = attack_speed;
	pode_atirar=false;
	alarm[0] = cooldown;
}

if(vida<=0){
morrendo = true;
speed=0;
sprite_index = s_player_dead
	
}


