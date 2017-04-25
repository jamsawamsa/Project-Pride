/// Menu swtich cases
switch (mpos) {
    case 0: {
        room_goto_next();
        break;
    }
    case 1: {
        /// room_goto_next();
        room_goto(rm_test);
        break;
    }
    case 2: {
        /// room_goto_next();
        break;
    }
    case 3: game_end(); break;
    default: break;
}
