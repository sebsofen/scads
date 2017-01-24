$fn=100;
rotate([0,180,0])
difference(){
    cube([35,40,25]);

    translate([(35-27)/2,(40-35)/2,0])
    cube([27,35,25-3]);

    translate([(35-25)/2,(40-25)/2,0])
    cube([25,25,25]);
    
    wd=2;
    translate([wd,wd,0])
    cylinder(r=1.5,h=25);
    translate([wd,40-wd,0])
    cylinder(r=1.5,h=25);
    translate([35-wd,40-wd,0])
    cylinder(r=1.5,h=25);
    translate([35-wd,wd,0])
    cylinder(r=1.5,h=25);
    
    translate([0,40/2,0])
    rotate([0,90,0])
    cylinder(r=15,h=35);
    
    translate([35/2,40,0])
    rotate([90,0,0])
    cylinder(r=12,h=45);
}