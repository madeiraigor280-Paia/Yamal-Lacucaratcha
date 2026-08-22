#region VARIAVEIS

alvo = noone;
destino_x = 0;
destino_y = 0;
jaandou = false;
atacando = false;
animacaoataque = false;
hitbox_dano = noone;
fase=0
gerarchave= true;
if(global.facil)
vel = 0.5;
else
vel = 0.65;
area = instance_place(x,y,obj_area_inimigo_mor);
vida=6;
colisaopolicial=false;
if(global.facil)
rangebusca=100;
else rangebusca=200
morrendo=false
if(global.dificil)
attack_speed=3;
else
attack_speed=2.75;
if(global.dificil)
cooldown=120;
else cooldown=180;
if(global.dificil)
range=100;
else range=50;
pode_atirar=false;
alarm[3]=60;


#endregion
