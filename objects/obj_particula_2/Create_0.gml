
//iniciando contador de quicada da partícula
quicada=0;
//variavel que faz com que o polciial não se ricocheteie quando atirar
pode_colidir=false;
//variavel pra evitar várias colisões da partícula numa mesma colisão com o policial
colisaopolicial= false;
//variavel pra evitar várias colisões da partícula numa mesma colisão com o player
colisaoplayer= false;
//variavel pra evitar várias colisões da partícula numa mesma colisão com a parede
colisaoparede= false;
colisaomorteiro=false;
// define quantas vezes a bolinha quica nos objetos antes de ser destruída
max_quicada=3
if(global.dificil) dano = 2;
else dano = 1;
