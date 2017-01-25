for(i = [0:0]){
    for(j = [0:0]){
        translate([i*50,j*25,0])
        difference(){
        cube([49,26,50]);
        translate([1,1,1])
        cube([47,24,49]);
    }
}
}