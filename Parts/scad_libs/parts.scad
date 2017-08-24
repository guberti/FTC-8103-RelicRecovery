$fn = 100;

use <utils.scad>

module tslot(l) {
    linear_extrude(height=r) {
        
    }
}


module sensormount()  {
    translate([-12,-12,0])
    difference() {
        round_2d(4) square(24);
        
        for (x = [0,24]) for (y = [0,24]) translate([x,y,0]) circle(4.33/2);
    }
}