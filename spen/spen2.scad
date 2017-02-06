$fn=12;
rotate([0,180,0])
difference(){
    union(){
        for(i = [0:10]){
            height = 10;
            translate([0,0,height*i])
        seg(12,10.5,height);
        }
    }
    translate([0,0,107.1/2])
    rotate([0,0,45])
    cube([5.3,6.8,107.1],center=true);

}

module seg(b,s,he){
    cylinder(d1=s,d2=b,h=he/2);
    translate([0,0,he/2])
    cylinder(d1=b,d2=s,h=he/2);
}