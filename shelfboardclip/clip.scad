module clip(mi){
    mirror([mi,0,0])
    rotate([0,90,0])
    union(){
    translate([0,-.2,0])
    cube([18,18.41,1]);

    translate([0,-.2,0])
    rotate([80,0,0])
    cube([18,18,1]);

    translate([0,19.2,.17])
    rotate([100,0,0])
    cube([18,18,1]);
    }
}

for(i = [0:5]){
    
    if(i%2 == 0){
        translate([-20,i * 12 - 10 ,0])
    clip(i%2);   
    }else{
        translate([0,i * 12 - 10,0])
    
    clip(i%2);      
    } 
}
