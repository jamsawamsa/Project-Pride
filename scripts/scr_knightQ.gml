/// Basic attack 1

// Friction
hSpd = fn_approach(hSpd,0,frc);
vSpd = fn_approach(vSpd,0,frc);

// Animate
image_speed = 1/5;
sprite_index = spr_knightBasicAtk1;

//Sound effects
// playSound_scr(slash_snd);


//Hitbox 
if ((image_index >= 2) && (image_index <= 3)) // check if attack is within key frames
{
    with(instance_create(x, y, obj_hitBox)) {
        sprite_index = spr_hitBoxKnight;
        image_xscale = other.image_xscale; // set hitbox direction
        chance = 1.5 - random(0.7); // damage in the range of 0.8x to 1.5times
        damage = round(other.strength * .9 * chance); // apply dmg rng
        with(instance_place(x, y, par_enemy)) { 
            if(hit == 0) { // If monster currently not hit
                if (instance_exists(camera_obj)) {
                    with(camera_obj) {
                        screenShake = 1;
                    }
                }
                hp -= other.damage; // Reduce monster's hp
                hit = 1; // Change hit variable of monster
                vSpd = -3; // Knockback into the air
                hSpd = sign(x - other.x) * 1.5;   // Set knockback speed
                image_xscale = sign(hSpd); // Set knockback direction
                state = e_state.hit; // set monster's state to hit
                
                dmg = instance_create(x, y -32, obj_damage) // create the pop up damage number instance
                dmg.str = string(other.damage); // set the damage value
                if (other.chance >= 1.3) {
                    dmg.crit = true;    // crit damage if damage is > 1.3 times
                }
            }
        }
    }
}

