//constants
mat_thickness = 3;
fins = 10;
height = 300;
fintilt = 15;
connectors = 10;

module anchor(radius,twist) {
    difference(){
        cylinder(r=radius,h=mat_thickness);
        for(i = [1:connectors]) {
            translate([sin(360*i/connectors)*radius , cos(360*i/connectors)*radius, 0 ])
            rotate(-360*i/connectors + twist -4, [0, 0, 1])
            cube([mat_thickness,7,mat_thickness+5],center=true);
        }
    }
}






//top anchor
translate([0,0,279.5])
difference(){
    rotate([0,0,5.3])
    anchor(59,31);
        
    translate([0,0,-1])
    cylinder(r=10,h=10); // hole for cable and fixture      
}

//bottom anchor
translate([0,0,46.5])
difference() {
rotate([0,0,54.5])
anchor(113,20);
    translate([0,0,-1])
    cylinder(r=90,h=10);
}

radius = 50;
for(i = [1:connectors]) {
translate([sin(360*i/connectors)*radius, cos(360*i/connectors)*radius, 0 ])
rotate(-360*i/connectors +122, [0, 0, 1])
translate([-1.5,-mat_thickness +4.5,0])
    rotate([90,0,0])
    rotate([0,0,fintilt])
    translate([70,0,0])
fin();

}



module fin() {
    notch_offset = 30;
    notch_depth = 5;
    difference() {    
        linear_extrude(height = mat_thickness) 
        import("drawing.dxf");
        //bottom notch
        translate([-2,notch_offset,0])
        rotate([0,0,-fintilt])
        cube([7,mat_thickness,notch_depth ]);
        //top notch
        translate([2,height - notch_offset,0])
        rotate([0,0,-fintilt])
        cube([10,mat_thickness,notch_depth]);
    }
    
}

