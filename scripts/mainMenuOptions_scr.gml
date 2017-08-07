/// Menu swtich cases
switch (mpos) {
    case 0: {
        room_goto(forest_rm1);
        break;
    }
    case 1: {
        /// room_goto_next();
        room_goto(rm_test);
        break;
    }
    case 2: {
        room_goto(rm_level1);
        break;
    }
    case 3: 
        room_goto(tavern_rm); 
        break;
        //game_end(); break;
    default: break;
}
