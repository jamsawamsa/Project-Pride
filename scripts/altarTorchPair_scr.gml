// function(altarObject altar, torchObject torch)
// @altar - the altar object to be linked
// @torch - the torch object to be linked
// pairs argumnent1 and argument 2 by giving both instances the id of the other

if (argument0.id != noone && argument1.id != noone) {
    // pair object 1
    if (argument0.paired != 1 && argument1.paired != 1) { // check if the altar has been previously paired
        argument0.pairedObject = argument1;
        argument0.paired = 1;
        
        // pair object 2
        argument1.pairedObject = argument0;
        argument1.paired = 1;
    }
}
