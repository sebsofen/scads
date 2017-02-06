$fn=30;

tw= 10;
td=10;
ttd=12;
th=70;


    box();
    translate([1,0,th - 3])
    rotate([90,90,0])
    linear_extrude(height=1)
    text("Bohrloch", font = "FONTIN:style=Bold");

    translate([19,0,0]){
    box();
    translate([1,0,th - 3])
    rotate([90,90,0])
    linear_extrude(height=1)
    text("Bleistift", font = "FONTIN:style=Bold");
    }
    translate([19 * 2,0,0]){
    box();
    translate([1,0,th - 3])
    rotate([90,90,0])
    linear_extrude(height=1)
    text("PPrüfer", font = "FONTIN:style=Bold");
    }
    
module box(){
union(){

translate([-(tw - 2 + 15-tw) / 2,ttd-2,0])
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



