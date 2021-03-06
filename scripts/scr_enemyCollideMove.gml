// horizontal collision
if (place_meeting(x + hSpd, y, obj_tile)) {
    while (!place_meeting(x + sign(hSpd), y, obj_tile)) {
        x += sign(hSpd);
    }
    hSpd = 0;
    dir *= -1;
}
// handle image flips, not yet pixel perfect when accounting for even width sprites
if (hSpd  > 0) {
    image_xscale = 1;
}
else if (hSpd < 0) {
    image_xscale = -1;
}
x += hSpd;
// vertical collision
if (place_meeting(x, y + vSpd, obj_tile)) {
    while (!place_meeting(x, y + sign(vSpd), obj_tile)) {
        y += sign(vSpd);
    }
    vSpd = 0;
    
    if (fearOfHeight) && !position_meeting(x + (hitBoxWidth/2)*dir, y + (hitBoxHeight/2) + 8, obj_tile) {
        dir *= -1;
    }
}

y += vSpd;
