$fn=100;
//difference(){
    translate([13.5,15.6,0])
cylinder(r=15,h=3);

translate([0,0,0])
linear_extrude(height =5, center = true, convexity = 10 )
scale([0.009,.009,1])
import (file = "glglasses.dxf");
    
//}
