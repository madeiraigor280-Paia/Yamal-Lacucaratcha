#region VARIAVEIS

alvo = noone;
destino_x = 0;
destino_y = 0;
jaandou = false;
atacando = false;
animacaoataque = false;
hitbox_dano = noone;
gerarchave= true;
if(global.facil)
vel = 0.5;
else
vel = 0.75;
area = instance_place(x,y,obj_area_inimigo_mor);
vida=4;
colisaopolicial=false;
if(global.dificil)
range=200;
else range=100
morrendo=false


#endregion
