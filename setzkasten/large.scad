for(i = [0:0]){
    for(j = [0:0]){
        translate([i*50,j*57,0])
        difference(){
        cube([55,105,50]);
        translate([1,1,1])
        cube([53,103,49]);
    }
}
}