/// React to inputs, normal state
scr_playerGetInputs();


move = keyRight + keyLeft;
hSpd = move * moveSpeed;
if (vSpd < 10) vSpd += grav;

if (place_meeting(x, y + 1, obj_tile)) {
    vSpd = keyJump * -jumpSpeed;
}

if (place_meeting(x, y + 1, obj_tile) && keyQ) {
    vSpd = fn_approach(vSpd, 0, frc);
    hSpd = fn_approach(hSpd, 0, frc);
    state = states.q;
}

if ((place_meeting(x, y, obj_ladder) && (keyUp)) || (place_meeting(x, y, obj_ladder) && (keyDown))) {
    hSpd = 0;
    vSpd = 0;
    state = states.ladder;
}

scr_playerCollideMove();
