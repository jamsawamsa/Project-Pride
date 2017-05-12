/// React to inputs, normal state
scr_playerGetInputs();


move = keyRight + keyLeft;
hSpd = move * moveSpeed;
if (vSpd < 10) vSpd += grav;

if (place_meeting(x, y + 1, obj_tile)) {
    vSpd = keyJump * -jumpSpeed;
}

// attack with key "q"
if (place_meeting(x, y + 1, obj_tile) && keyQ) {
    //vSpd = fn_approach(vSpd, 0, frc);
    //hSpd = fn_approach(hSpd, 0, frc);
    playSound_scr(slash_snd); // play sound effect
    state = states.q;
}

// activate altar
if (place_meeting(x, y, altar_par) && keyF) {
    with(instance_place(x, y, altar_par)) {
        if (activate == 0) {
            activate  = 1;
            alarm[0] = duration;
        }
        
    }
}

// go to ladder state
if ((place_meeting(x, y, obj_ladder) && (keyUp)) || (place_meeting(x, y, obj_ladder) && (keyDown))) {
    hSpd = 0;
    vSpd = 0;
    state = states.ladder;
}

scr_playerCollideMove();
