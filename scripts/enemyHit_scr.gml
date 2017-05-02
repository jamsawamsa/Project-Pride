vSpd = min(7, vSpd + grav);
if (hit != 0)
{
    alarm[1] = -1 // alarm 1 is to signify base attack is ready
    image_index = 1; // set to the enemy hit sprite
    image_speed = 0; 
    alarm[2] = 1; // alarm 2 is for flashes while getting hit
    hit = fn_approach(hit,0,0.05);
}
else {
    image_index = 0;
    hSpd = 0;
    if (place_meeting(x, y + 1, obj_tile)) {
    state = e_state.idle
    }
}

scr_enemyCollideMove();

