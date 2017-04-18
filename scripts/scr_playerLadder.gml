scr_playerGetInputs();

// Ladder movement
hSpd = 0;
vSpd = 3 * (keyDown - keyUp);
x = (instance_nearest(x, y, obj_ladder).x);

if (keyJump) || (!place_meeting(x, y, obj_ladder)) {
    hSpd = 0;
    vSpd = 0;
    state = states.normal;
    if (keyJump) && (keyLeft) || (keyRight) {
        move = keyRight + keyLeft;
        hSpd = move * moveSpeed;
        if (vSpd < 10) vSpd += grav;
        
        if (place_meeting(x, y, obj_ladder)) {
            vSpd = keyJump * -jumpSpeed;
        }
    }
}

scr_playerCollideMove();
