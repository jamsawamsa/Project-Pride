vSpd = min(7, vSpd + grav);

if (instance_exists(player_par)) { // check if player exists
    // aggro on to player if in range and not aggroing altar
    if (distance_to_object(player_par) < aggroRange && state != e_state.aggroAltar) {
        state = e_state.aggroPlayer;
    }
}
if (instance_exists(altar_par)) { // check if altar exists
    // aggro onto altar
    //if (distance_to_object(altar_par) < 96 && state != e_state.aggroPlayer) state = e_state.aggroAltar;
} 

scr_enemyCollideMove();
