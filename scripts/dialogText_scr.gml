//dialogText_scr("text", speed, x, y);
// "text" - text to pring
// speed - speed at which text is drawn
// x - x of object that speaks
// y - y of object that speaks

//padding = 8;
//maxLength = view_wview[0];
//fontSize = font_get_size(text_fnt);
// get text sizes
//textWidth = string_width_ext(argument0, fontSize + (fontSize/2), maxLength);
//textHeight = string_height_ext(argument0, fontSize + (fontSize/2), maxLength);

// set box sizes
//boxWidth = textWidth + (padding*2);
//boxHeight = textHeight + (padding*2);
//txt = instance_create(argument2 - (boxWidth/2), argument3 - (boxHeight/2), text_obj);
txt = instance_create(argument2, argument3, text_obj);
with (txt) {
    padding = 8;
    maxLength = view_wview[0];
    text = argument0;
    spd = argument1;
    font = text_fnt;
    
    textLength = string_length(text); 
    fontSize = font_get_size(font);
    //fontSize = other.fontSize;
    
    draw_set_font(font); // set font to be used
    
    // get text sizes
    textWidth = string_width_ext(text, fontSize + (fontSize/2), maxLength);
    textHeight = string_height_ext(text, fontSize + (fontSize/2), maxLength);
    //textWidth = other.textWidth;
    //textHeight = other.textHeight;
    
    // set box sizes
    boxWidth = textWidth + (padding*2);
    boxHeight = textHeight + (padding*2);
    //boxWidth = other.boxWidth;
    //boxHeight = other.boxHeight;
}
