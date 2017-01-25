$fn=100;
rotate([180,0,0])
difference(){
union(){
translate([2.75,3.5,0])
    cylinder(d=12,h=120);
    translate([2.75,3.5,-4])
cylinder(d1=11.5,d2=12,h=4);
}

translate([-3.1,-2,95])
rotate([0,10,0])
cube([2,12,20]);
translate([0,0,-4])
cube([5.5,7,100.1]);
    
}
