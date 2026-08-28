// se por algum motivo sair da room se destrói

if(x<=-20 or x>=1386) instance_destroy();
if(y<=-20 or  y>=788) instance_destroy();
//if(direcao>=2) image_angle-=20;
//else image_angle+=20;
if(direction<90 or direction>=270)
image_angle-=20;
else image_angle +=20;

//alterando a escala 
image_xscale = 1.5
image_yscale = image_xscale

if (instance_exists(bola_colisao))
{
	bola_colisao.x = x + 5;
	bola_colisao.y = y;
	
}

//Eu sou o pai da bola
bola_colisao.pai = id;