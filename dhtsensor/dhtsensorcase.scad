$fn=100;
difference(){
    cube([35,16.5,10]);
    
    
    translate([0,16.5/2,7])
    rotate([0,90,0])
    cylinder(r=5,h=10);
    
    translate([18,0,3])
    cube([25,16.5,7]);
    
    translate([11,16.5/2,0])
     cylinder(r=2,h=1);
    translate([1,1,1])
    cube([33,14.5,10]);
    
}

translate([0,20,0]){
    difference(){
        cube([35-17,16.5,1]);
        translate([11,16.5/2,0])
        cylinder(r=2,h=1);
        
    }
}
translate([1,21,1]){
    difference(){
        cube([35-18-2,16.5-2,1]);
        translate([10,14.5/2,0])
        cylinder(r=2,h=1);
        
    }
    translate([15,0,-1])
    cube([2,16.5-2,9]);
}