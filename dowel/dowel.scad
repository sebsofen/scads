$fn=100;
translate([0,0,38])
cylinder(r1=4,r2=2,h=3);
difference(){
    cylinder(r=4,h=38);
    cylinder(r1=3,r2=.5,h=39);
    
    for(i= [0:6]){
        translate([-4,2,10 + i * 4.1])
        rotate([-25,0,0])
        cube([8,4,2]);
        
        translate([-4,-5.7,10 + i * 4.1])
        rotate([25,0,0])
        cube([8,4,2]);
        
        
    }
    
    
    
    translate([-4,-.5,9])
    cube([9,1,30]);
    
    
}

translate([-.5,-4.5,0])
rotate([-.5,0,0])
cube([1,1.5,38]);

translate([-.5,3,0])
rotate([.5,0,0])
cube([1,1.5,38]);