if (global.cutcene || global.dialogo) exit;

if (alvo == noone && jaandou==false){
	if(morrendo) return;
	jaandou=true;
	destino_x = random_range(area.bbox_left, area.bbox_right);
	destino_y = random_range(area.bbox_top, area.bbox_bottom);
	move_towards_point(destino_x, destino_y, vel);
	
	sprite_index = spr_policial_02_run
	alarm[1] = 100;
	
}
if (instance_exists(obj_player))
{	
	if(morrendo) return;
	if(obj_player.morrendo == true) exit;
    var _dist = point_distance(x, y, obj_player.x, obj_player.y);

    if (_dist <= rangebusca)
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

        with (obj_policial_2)
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

        mp_potential_step_object(alvo_x, alvo_y, vel*1.1, obj_colisor);
    }
	
	if (_dist<=range&&pode_atirar){
		if(animacaoataque==false&&pode_atirar==true){
		sprite_index = spr_policial_02_ataque
		image_index = 0
		image_speed=1
		speed = 0;
		animacaoataque=true;
		atacando = true;
		}
		if(atacando == true && image_index>=2){
			var familia = {
			divisoes: 0,
			max_divisoes: 2
		}
		particula=instance_create_layer(x,y,"Particulas",obj_particula_2);
		var s = audio_play_sound(snd_arma, 0, false,0.5);
		audio_sound_pitch(s, random_range(0.95, 1.05));
		particula.familia = familia;
		particula.direcao = image_xscale;
		particula.direction = point_direction(x, y, alvo.x, alvo.y);
		particula.speed = attack_speed;
		pode_atirar=false;
		alarm[3] = cooldown
		alarm[4] = 5;
		}
}
		
		if(atacando == true && image_index>=3.5) 
		{
			atacando = false;
			animacaoataque = false;
			sprite_index = spr_policial_02_run
			speed = vel*1.1;
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
		sprite_index=spr_policial_02_dead
		image_index=0
		image_speed=1
		speed=0
		if(global.dificil) playerupou(2);
		else playerupou(4);
		//gerandodialogo(["Achamos a chave para abrir minha cela!","Abra aqui logo, seu lerdo!"],1,10);
		if(instance_exists(obj_player)) 
		if(global.level>obj_player.level){ 
			instance_create_layer(0, 0, "Tela", obj_levelup);
			obj_player.level=global.level;
		}
	}
}