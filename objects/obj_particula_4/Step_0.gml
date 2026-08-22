

if (!ligada) exit;


if (ativa && !explodindo) {
	if(image_speed==0) image_speed=1;
	if(image_speed<2 && image_speed>=1)
    image_speed *=1.01

    // Chegou ao último frame
    if (image_speed>=2) {
        explodindo = true;
    }
}

if (explodindo && !dano_aplicado) {
	sprite_index=spr_bomba_explode
	image_index=0;
	image_speed=1;
    
    dano_aplicado = true;

    var s = audio_play_sound(
        snd_explosao,
        0,
        false
    );

    audio_sound_pitch(
        s,
        random_range(0.95, 1.05)
    );

    var lista = ds_list_create();

    collision_circle_list(
        x,
        y,
        raio_explosao,
        obj_policial_pai,
        false,
        true,
        lista,
        true
    );

    for (var i = 0; i < ds_list_size(lista); i++) {
        
        var inimigo = lista[| i];

        inimigo.vida -= dano;
        inimigo.image_blend = c_orange;
		inimigo.alarm[0]=5
		if(instance_exists(obj_screenshake)) obj_screenshake.valor+=5;
    }


    ds_list_destroy(lista);
	
	if (point_distance(x, y, obj_player.x, obj_player.y) <= raio_explosao && global.facil==false) {
        
        obj_player.vida -= dano;
        obj_player.image_blend = c_orange;
		obj_player.alarm[1]=5
		if(instance_exists(obj_screenshake)) obj_screenshake.ang+=10;
    }
	
	var minas = ds_list_create();

    collision_circle_list(
        x,
        y,
        raio_explosao,
        obj_particula_4,
        false,
        true,
        minas,
        true
    );

    for (var i = 0; i < ds_list_size(minas); i++) {

        var mina = minas[| i];

        // Não ativa a própria mina
        if (mina != id) {
            mina.ligada = true;
			mina.ativa = true;
			mina.explodindo = true;
        }
    }

    ds_list_destroy(minas);
	
	var morteiros = ds_list_create();

    collision_circle_list(
        x,
        y,
        raio_explosao,
        obj_morteirinho,
        false,
        true,
        morteiros,
        true
    );

    for (var i = 0; i < ds_list_size(morteiros); i++) {

        var morteiro = morteiros[| i];
		morteiro.vida-=dano;
		morteiro.image_blend = c_orange;
		morteiro.alarm[1]=5
		if(instance_exists(obj_screenshake)) obj_screenshake.valor+=10;
	}
		

    ds_list_destroy(morteiros);

	if(instance_exists(obj_bombardeiro)) obj_bombardeiro.quantidade--;
}
if(explodindo && image_index>=4.5) instance_destroy();