dim = 10;
bars = 2;

module half(side){
    pillar(side);
    translate([dim-bars,0,0])
    pillar(side);
    translate([dim-bars,dim-bars,0])
    pillar(side);
    translate([0,dim-bars,0])
    pillar(side);
    difference(){
        cube([dim,dim,bars]);
        translate([bars,bars,0])
        cube([dim-2*bars,dim-2*bars,bars]);
    }
    
    
    

}

half(true);

translate([dim * 1.5,0,0])
half(false);

module pillar(top){
    if(top == true){
        difference(){
            cube([bars,bars,dim/2]);       
            translate([bars/4,bars/4,dim/2 - dim/10])
            cube([bars/2,bars/2,dim/10]);
        }
    }else{
        cube([bars,bars,dim/2]);       
        translate([bars/4 + bars/10/2,bars/4 + bars/10/2,dim/2 ])
        cube([bars/2 - bars/10,bars/2- bars/10,dim/10]);
    }
}
