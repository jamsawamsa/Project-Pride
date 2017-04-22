/// Collide and move
// horizontal collision
if (place_meeting(x + hSpd, y, obj_tile)) {
    while (!place_meeting(x + sign(hSpd), y, obj_tile)) {
        x += sign(hSpd);
    }
    hSpd = 0;
}
// handle image flips, not yet pixel perfect when accounting for even width sprites
if (hSpd  > 0) {
    image_xscale = 1;
}
else if (hSpd < 0) {
    image_xscale = -1;
}

// Animate
if (place_meeting(x, y+1, obj_tile)) {
    if (move != 0) {
        sprite_index = spr_knightWalk;
        image_speed = 1/10;
    } else {
        sprite_index = spr_knight
    }
} 
x += hSpd;

// vertical collision
if (place_meeting(x, y + vSpd, obj_tile)) {
    while (!place_meeting(x, y + sign(vSpd), obj_tile)) {
        y += sign(vSpd);
    }
    vSpd = 0;
}
y += vSpd;
