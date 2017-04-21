dir = sign(obj_knight.x - x);
hSpd = dir * moveSpeed;
vSpd = min(7, vSpd + grav);
if (distance_to_object(obj_knight) > 128) state = e_state.idle;

scr_enemyCollideMove();
