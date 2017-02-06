$fn=20;
difference(){
    cube([2,80.5,60]);
    
translate([0,20,55])
rotate([0,90,0])
cylinder(d=2,h=4);   
   
   translate([0,80.5-20,55])
rotate([0,90,0])
cylinder(d=2,h=4); 
}


difference(){
cube([34,80.5,50]);
    translate([2,2-.25,2])
cube([30.5,77,50]);
    
    translate([8,27])
    cube([15,25,5]);
}