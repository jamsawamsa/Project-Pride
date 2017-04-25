vSpd = min(7, vSpd + grav);
if (hit != 0)
{
    alarm[1] = -1
    image_index = 1;
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
