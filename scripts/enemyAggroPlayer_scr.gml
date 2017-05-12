//aggro logic
vSpd = min(7, vSpd + grav);
if (instance_exists(player_par)) {
    dir = sign(player_par.x - x);
    if (distance_to_object(player_par) > atkRangePix) { // Make sure the monster and player does not overlap
        hSpd = dir * moveSpeed; // set to move towards the player
    }
    else {
        hSpd = 0; // set monster to stand still next to player or in attack range
        if (alarm[1] == -1 && canAtk) { // check if alarm has been previously set
            alarm[1] = 0.5*room_speed; // wait a while then attack
        }
    }   
    
    if (distance_to_object(player_par) > 128) state = e_state.idle; // exit aggro range
}
scr_enemyCollideMove();
