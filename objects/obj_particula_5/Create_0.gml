
//iniciando contador de quicada da partícula
quicada=0;
//variavel pra evitar várias colisões da partícula numa mesma colisão com o policial
colisaopolicial= false;
//variavel pra evitar várias colisões da partícula numa mesma colisão com o player
colisaoplayer= true;
//variavel pra evitar várias colisões da partícula numa mesma colisão com a parede
colisaoparede= false;
// define quantas vezes a bolinha quica nos objetos antes de ser destruída
max_quicada=3
colisaomorteiro=false;
alarm[1]=60;
if(instance_exists(obj_policial_corrupto))dano=obj_policial_corrupto.dano;
else dano =1;

