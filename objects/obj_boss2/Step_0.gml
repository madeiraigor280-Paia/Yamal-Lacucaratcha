if cutscene = true{
	vspeed = + 10
	cooldowncutscene = 10
	image_xscale = 0.5
	image_yscale = 0.5
	
}

if cutscene = false{
	vspeed = 0;	
	image_xscale = lerp(0.5, 1, 0.15)
	image_yscale = lerp(0.5, 1, 0.15)
	
	
}

if cutscene = true and y > 192 and walking = false{
	cutscene = false
	cooldownactionboss = 500;

}

if cooldowncutscene > 1 and cooldowncutscene< 3{
	walking = true	
}

cooldowncutscene = cooldowncutscene - 1
cooldownactionboss = cooldownactionboss - 1

if walking = true and cooldownactionboss>1{
	if wl = true{
		hspeed = -8	
		
	}
	
	if wr = true{
		hspeed = 8
			
	}
	if wl = true and cooldownwalking< 0 and place_meeting(x, y, obj_chao){
	cooldownwalking = 10
	wl = false
	wr = true;
		
	}
	
	if wr = true and cooldownwalking< 0 and place_meeting(x, y, obj_chao){
	cooldownwalking = 10
	wr = false
	wl = true;
	
	}
}

cooldownwalking = cooldownwalking - 1;

if walking = true and cooldownactionboss<1{
	if x != 512 and hspeed != 0{
		move_towards_point(512, y, 8)
		
	}
	
	if x = 512{
		hspeed = 0;	
	}
	
	if hspeed = 0{
		walking = false;
		cooldownactionboss = 500
		shooting = true;
	}
	
}

if shooting = true and cooldownactionboss>1{
	if cooldownshooting<0{
		instance_create_depth(obj_boss2.x, obj_boss2.y, -1, obj_tiro_boss)
		cooldownshooting = 30
	}
	
}

cooldownshooting = cooldownshooting - 1

if shooting = true and cooldownactionboss<0{
	shooting = false
	cooldownactionboss = 300
	tired = true;
	
}

if tired = true and cooldownactionboss<0{
	tired = false;
	cooldownactionboss = 500
	walking = true;
	
}



if place_meeting(x, y, obj_tiro_player){
	sprite_index = spr_original_hit
	
}
else
{
	sprite_index = spr_original	
}

