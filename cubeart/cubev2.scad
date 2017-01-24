s=10;
e=2;
rotate([45,45,0])
difference(){
    cube([s,s,s]);
    
    translate([e,e,0])
    cube([s - 2*e,s - 2*e,s]);
    
    translate([e,0,e])
    cube([s - 2*e,s,s - 2*e]);
    
    translate([0,e,e])
    cube([s,s - 2*e,s - 2*e]);
}

translate([6.5,-1,-8])
cube(2,2,1);