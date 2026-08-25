global.bola--;
//iniciando contador de quicada da partícula
quicada=0;
//variavel que faz com que o player não se ricocheteie quando atirar
pode_colidir=false;
//variavel pra evitar várias colisões da partícula numa mesma colisão com o policial
colisaopolicial= false;
//variavel pra evitar várias colisões da partícula numa mesma colisão com o player
colisaoplayer= false;
//variavel pra evitar várias colisões da partícula numa mesma colisão com a parede
colisaoparede= false;
// define quantas vezes a bolinha quica nos objetos antes de ser destruída
max_quicada=obj_player.max_quicadas
colisaocutcene = false;
colisaomorteiro=false;
// range do ricochete
range = 100;
tempo = (5-obj_player.attack_speed)*2 + 5;

// lista de inimigos já atingidos
alvos_acertados = ds_list_create();

alarm[3]=40;

