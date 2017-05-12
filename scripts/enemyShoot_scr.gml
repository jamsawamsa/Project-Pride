/// handles range enemy attacks

dir = sign(player_par.x - x);
image_xscale = dir;

if (instance_exists(player_par)) { // check if player exists
    //shoot stuff
    with(instance_create(x + (sign(image_xscale)*sprite_width/2), y, enemyProjectile_obj)) { // create projectile instance
        // looks
        sprite_index = other.projSpr; // sets the projectile sprite
        image_speed = other.projAnimSpd;
        visible = true;
        //image_xscale = other.image_xscale; // projectile direction
        
        // mechanics
        travelDist = other.projDist; //  set travel distance of the bullet
        damage = other.atk;
        
        image_angle = point_direction(x,  y, player_par.x, player_par.y); // make projectile point towards target
        // placeholder test speed
        // hspeed = sign(other.image_xscale) * 4
        hspeed = dcos(image_angle) * other.projSpd; // sets the horizontal speed component of bullet
        vspeed = -1 * dsin(image_angle) * other.projSpd; // sets the vertical speed component of bullet
    }
    state = e_state.idle; // test reset state, will add proper attack cooldowns when an animation for attacks has been made
    alarm[0] = atkCooldown; 
    canAtk = 0;
}
