/// React to inputs, normal state
scr_playerGetInputs();

move = keyRight + keyLeft;
hSpd = move * moveSpeed;
if (vSpd < 10) vSpd += grav;

if (place_meeting(x, y + 1, obj_tile)) {
    vSpd = keyJump * -jumpSpeed;
}

if (place_meeting(x, y, obj_ladder) && (keyUp) || (keyDown)) {
    hSpd = 0;
    vSpd = 0;
    state = states.ladder;
}

scr_playerCollideMove();
