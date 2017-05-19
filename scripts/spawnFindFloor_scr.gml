while (y > view_yview+32)
{
    y-=8; 
    if !(place_meeting(x,y,par_tile)) { 
        return 1;
    } 
}
instance_destroy();
