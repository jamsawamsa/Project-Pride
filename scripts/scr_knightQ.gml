/// Basic attack 1
// scr_playerGetInputs();

// Friction
hSpd = fn_approach(hSpd,0,frc);
vSpd = fn_approach(vSpd,0,frc);

// Animate
image_speed = 1/5;
sprite_index = spr_knightBasicAtk1;


//Hitbox 
if ((image_index >= 2) && (image_index <= 3))
{
    with(instance_create(x, y, obj_hitBox)) {
        image_xscale = other.image_xscale;
        with(instance_place(x, y, par_enemy)) {
            if(hit == 0)
                hit = 1;
                vSpd = -2;
                hSpd = sign(x - other.x) * 2;
                image_xscale = sign(hSpd);
        }
    }
}

