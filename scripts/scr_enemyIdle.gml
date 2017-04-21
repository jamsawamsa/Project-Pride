hSpd = dir * moveSpeed;
vSpd = min(7, vSpd + grav);
if (distance_to_object(obj_knight) < 96) state = e_state.chase;

scr_enemyCollideMove();
