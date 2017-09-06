$fn = 100;

use <utils.scad>
use <variables.scad>

module tslot(l) {
    linear_extrude(height=r) {
        
    }
}


module sensormount(hole = 4.33)  {
    translate([-12,-12,0])
    difference() {
        round_2d(4) square(24);
        
        for (x = [0,24]) for (y = [0,24]) translate([x,y,0]) circle(hole/2);
    }
}

module tslot() { translate([-tslot("o"),0,0]) import("resources/tslot.dxf"); }
module tslothook(thickness = 2) {
    t = 2;
    
    nubwidth = 5.7;
    nubheight = 6;
    
    
    xadd = 2.85;
    yadd = 2.95;
    
    difference() {
        translate([-tslot("o")-t,-yadd,0]) square([tslot("o")+t+xadd,tslot("o")+t+yadd]);
        translate([-tslot("o"),-yadd,0]) square([tslot("o")+xadd, tslot("o")+yadd]);
    }
    difference() {
        union() {
            tslot();
            
            translate([0,tslot("o"),0]) resize([nubwidth,nubheight]) circle();
        }
        
        translate([nubwidth/-2,tslot("o"),0]) square([nubwidth, nubheight]);
        
        translate([-tslot("o"),-0.2,0]) 
        difference() {
            translate([0,-1,0]) square([9.8,15]);
            translate([0,-1.6,0]) scale([1,0.6,1]) circle(7.75);
        }
    }
    
}

linear_extrude(height = 4)
tslothook();