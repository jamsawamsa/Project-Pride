var tile ,iw,w_left,w_right,w_up,w_down,w_upright,w_downright,w_upleft,w_downleft;

iw = sprite_width;
w_left = place_meeting(x-iw,y,object_index);
w_right = place_meeting(x+iw,y,object_index);
w_up = place_meeting(x,y-iw,object_index);
w_down = place_meeting(x,y+iw,object_index);
w_upleft = place_meeting(x-iw,y-iw,object_index);
w_downleft = place_meeting(x-iw,y+iw,object_index);
w_upright = place_meeting(x+iw,y-iw,object_index);
w_downright = place_meeting(x+iw,y+iw,object_index);

tile = 0;       // start as dirt

if (!w_up) {  // change to top
    tile = 1
}

if (w_left && w_up && w_down && w_upleft && w_downleft && !w_right) {  // change to flat right
    tile = 2;
}

if (w_right && w_up && w_down && w_upright && w_downright && !w_left) {  // change to flat right
    tile = 3;
}

if (w_left && w_down && !w_up && !w_right) { // change to top right
    tile = 4;
}

if (w_right && w_down && !w_up && !w_left) { // change to top left
    tile = 5;
}

if (w_left && w_up && !w_down && !w_right) { // change to bottom right
    tile = 6;
}

if (w_right && w_up && !w_down && !w_left) { // change to bottom left
    tile = 7;
}

if (!w_down && !tile) {
    tile = 8
}

return tile;
