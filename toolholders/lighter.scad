$fn=30;

tw= 27;
td=16;
ttd=18;
th=70;


    box();
    translate([10,0,th - 3])
    rotate([90,90,0])
    linear_extrude(height=1)
    text("LIGHTER", font = "FONTIN:style=Bold");


module box(){
union(){

translate([-(tw + 15-tw)/2,ttd-2,0])
difference(){
cube([tw + 15,2,th]);
    
    translate([3,0,5])
    rotate([-90,0,0])
    cylinder(r=1,h=4);
    
    translate([3,0,th-5])
    rotate([-90,0,0])
    cylinder(r=1,h=4);
    
    translate([tw + 15-3,0,th-5])
    rotate([-90,0,0])
    cylinder(r=1,h=4);
    
    translate([tw+ 15 -3,0,5])
    rotate([-90,0,0])
    cylinder(r=1,h=4);
    
    }
difference(){

//box
cube([tw+2,ttd,th]);    
translate([1,1,3])
cube([tw,td,th]);
    
}

}

}