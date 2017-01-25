$fn=100;
//switchknob();

//bottom 

module battcase(){
difference(){
    cube([43,55,6]);
    
    //move this to bottom compartement
    //translate([0,2,2])
    //rotate([0,90,0])
    //cylinder(d=2,h=40);
    
    translate([4,2,0])
    battery();
}

}



clamp();
module clamp() {
    
    
    difference(){
        translate([0,-55/2,0])
        union(){
            cube([43,55,9]);
            translate([0,0,9])
                battcase();
        }
        //gummiband
        translate([0,-55/2 + 5,5])
        rotate([0,90,0])
        cylinder(d=3,h=50);
        
        translate([0,55/2 - 5,5])
        rotate([0,90,0])
        cylinder(d=2,h=50);
        
        translate([0,55/2 ,6])
        rotate([0,90,0])
        cylinder(d=3,h=50);
        
        translate([0,55/2 - 5,4])
        rotate([15,0,0])
        cube([50,6,2]);
        
        
        //sattelstütze
        translate([0,8,-10])
        rotate([0,90,0])
        cylinder(d=27.2,h=50);
        
        //screwholes
        translate([3,-55/2 + 7,0])
        screwheadhole();
        translate([3, 55/2 - 7,0])
        screwheadhole();
        
        translate([40,-55/2 + 7,0])
        screwheadhole();
        translate([40 , 55/2 - 7,0])
        screwheadhole();
        
        //charger
        translate([2,0,2])
        rotate([0,0,-90])
        charger();
        
        //switch
        translate([39,-10,3])
        rotate([0,0,90])
        switch();
    }
}

//screwheadhole();

module screwheadhole(){
    cylinder(d=3,h=1);
    cylinder(d=1,h=20);
}

//knob for light switch
module switchknob(){
    rotate([180,0,0])
    difference(){
        cylinder(d=7.5,h=6);
        translate([0,0,2.5])
        cube([5,4,5],center=true);
        
        
    }
}


//translate([40,0,0])
//charger();

//translate([90,0,0])
//light();


//groundplate:
//cube([])

module battery(){
    cube([35,51,6]);
}

module charger(){
    cube([20,26,7]);
    translate([(20-9)/2,-3,3])
    cube([9,10,4]);
}

module light(){
    //outer diameter: 45
    cylinder(d=34,h=15);
}

module switch() {
    translate([5.5,0,3])
    rotate([90,0,0])
    cylinder(d=7,h=6);
    cube([11,11,6]);
}