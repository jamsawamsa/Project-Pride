vSpd = min(7, vSpd + grav);

if (hit != 0)
{
    image_index = 1;
    hit = fn_approach(hit,0,0.05);
}
else {
    image_index = 0;
    hSpd = moveSpeed * dir;
}
// if (distance_to_object(obj_knight) < 96) state = e_state.chase;

scr_enemyCollideMove();
