var count;

// Monster array
monsterArray[0] = obj_mogul;
monsterArray[1] = flamenoid_obj;

// Randomise between which monster to spawn
count = irandom_range(0,1);
return monsterArray[count];

