
if (global.vida <= global.max_vida && coletado = false)
{
	global.vida += 1
	global.vida = clamp(global.vida, global.vida, global.max_vida)
}
coletado = true

