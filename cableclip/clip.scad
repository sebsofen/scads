$fn = 10;

for (x= [1:2]){
    for(y=[1:2]){
        translate([6*x,17*y,0])
        clip();
    }
}



module clip(){
difference(){
    
translate([0,-4,0])
shell();

translate([0,0,1.5])
rotate([0,90,0])
    
cylinder(r=5,h=6);

translate([2.5,7,0])
cylinder(r=1.5,h=10);    
}

module shell(){
    cube([5,13,8]);   
    translate([0,-2.5,0])
   cube([5,10,5.5]);     
    rotate([0,90,0])
    translate([-5.5,0,0])
    cylinder(r=2.5,h=5);
}

}