// function(altar, torch)
// pairs argumnent1 and argument 2 by giving both instances the id of the other

if (argument0.id != noone && argument1.id != noone) {
    // pair object 1
    argument0.pairedObject = argument1;
    argument0.paired = 1;
        
    // pair object 2
    argument1.pairedObject = argument0;
    argument1.paired = 1;
}
