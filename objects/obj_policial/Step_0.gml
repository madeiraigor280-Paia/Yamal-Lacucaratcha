if (global.cutcene || global.dialogo) exit;
if (alvo == noone && jaandou==false){
	if(morrendo) return;
	jaandou=true;
	destino_x = random_range(area.bbox_left, area.bbox_right);
	destino_y = random_range(area.bbox_top, area.bbox_bottom);
	move_towards_point(destino_x, destino_y, vel);
	
	sprite_index = s_policial_run
	alarm[1] = 100;
	
}
if (instance_exists(obj_player))
{	
	if(morrendo) return;
	if(obj_player.morrendo == true) exit;
    var _dist = point_distance(x, y, obj_player.x, obj_player.y);

    if (_dist <= range)
    {
        alvo = obj_player;
    }

    if (alvo == obj_player && atacando == false)
    {
        var alvo_x = alvo.x;
        var alvo_y = alvo.y;

        var sep_x = 0;
        var sep_y = 0;
        var raio = 40;

        with (obj_policial)
        {
            if (id != other.id)
            {	
                var d = point_distance(x, y, other.x, other.y);

                if (d < raio)
                {
                    var dir = point_direction(x, y, other.x, other.y);

                    var forca = (raio - d) / raio;

                    sep_x += lengthdir_x(forca * 8, dir);
                    sep_y += lengthdir_y(forca * 8, dir);
                }
            }
        }

        alvo_x += sep_x;
        alvo_y += sep_y;

        mp_potential_step_object(alvo_x, alvo_y, vel, obj_colisor);
    }
	
	if (_dist<=8)
		if(animacaoataque==false){
		sprite_index = s_policial_ataque
		image_index = 0
		image_speed=1
		speed = 0;
		animacaoataque=true;
		atacando = true;
		var s = audio_play_sound(snd_ataque_policial, 0, false);
		audio_sound_pitch(s, random_range(0.95, 1.05));
		}
		if(atacando == true && hitbox_dano == noone && image_index>=2){
		hitbox_dano = instance_create_depth(x+ (5*image_xscale),y-10,depth,obj_dano_policial_1)
		}
		
		if(atacando == true && image_index>=4.5) 
		{
			atacando = false;
			if(instance_exists(hitbox_dano)) instance_destroy(hitbox_dano);
			hitbox_dano = noone;
			animacaoataque = false;
			sprite_index = s_policial_run
			speed = vel;
		}
}


if direction > 90 or direction < 270 
{
	image_xscale = -1 
}
if direction < 90 or direction > 270
{
	image_xscale = 1
}
if(vida<=0){
	global.inimigos--;
	if(!morrendo){
		morrendo=true;
		sprite_index=s_policial_dead
		image_index=0
		image_speed=1
		speed=0
		if(global.dificil) playerupou(1);
		else playerupou(2);
		if(fase==0&&global.gerarchave) gerandodialogo(["Achamos a chave para abrir minha cela!","Abra aqui logo, seu lerdo!"],[1,1],10,true);
		if(fase==0 && global.gerarchave==false) {
			global.etapa=2;
			gerandodialogo(["Precisamos ir logo!!","Vamos para a esquerda!"],[1,1],1000,true)
			if(global.contadormax==1000){
			with(obj_spawn){
				liberado = false;
			}
			obj_sensor_room.liberado=true;
			o_porta_lado.liberado=true;
			}
		}
		if(fase==2&&global.gerarchave) gerandodialogo(["Olha aqui!","Como que dao as chaves para esses fraquinhos sempre?"],[0,0],10000,true)
		if(instance_exists(obj_player)) 
		if(global.level>obj_player.level){ 
			instance_create_layer(0, 0, "Tela", obj_levelup);
			obj_player.level=global.level;
		}
	}
}