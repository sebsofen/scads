for(i = [0:1]){
    for(j = [0:1]){
        translate([i*50,j*57,0])
        difference(){
        cube([49,56,50]);
        translate([1,1,1])
        cube([47,54,49]);
    }
}
}