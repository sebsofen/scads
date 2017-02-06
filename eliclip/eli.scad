$fn=20;
height=1.5;
in=7.4;
out=12.5;
rw=7.1;
rl=8.1;


module clip(){
rotate([0,0,180])
difference(){
union(){
    cylinder(d=out,h=height);
    translate([-out/2 -rl+1,-rw/2,0])
    cube([rl,rw,height]);
}


translate([out/4,0,height/2])
cube([out/2,out,height],center=true);

cylinder(d=in,h=height);
}

}

module elisa(){
    translate([0,-7,0])
    cube([1,14,.3]);
difference(){
    
    translate([0,-7.5,0])
    cube([35,15,2]);
    translate([0,0,0])
    clip();

    cylinder(d=in-4,h=20);
}
    scale([1.7,1,1])
    translate([2,-5.7,2])
    linear_extrude(height=1)
    text("Eli", font = "Bernadette:style=Bold");

}

elisa();
translate([0,17,0])
elisa();
