diam = 6;

fac = diam/8;
scale([fac,fac,fac])

difference(){
    solid();
    
    cylinder(r1=0,r2=2.5 ,h=39);
    
    
    translate([-5,-.5,3])
    cube([10,1,20]);
} 

scale([fac,fac,fac])
translate([2,-.5,23.5])
rotate([0,15,0])
cube([2,1,9]);

scale([fac,fac,fac])
translate([-4,-.5,23])
rotate([0,-15,0])
cube([2,1,9]);

module solid(){
    for(i = [0:12]){
        rotate([0,0,i*15])
        translate([0,0,i*1.5])   
        segment(false);

    }
    
    rotate([0,0,13*15])
    translate([0,0,13*1.5])   
    segment(true);

    translate([0,0,22.5])
    cylinder(d=8,h=10);

}
module segment(filled) {
    difference(){
    cylinder(r1=2,r2=4.15,h=3);
        if(filled==false){
        translate([0,0,1.5])
        cylinder(r1=2,r2=5,h=3);
    }
}
}