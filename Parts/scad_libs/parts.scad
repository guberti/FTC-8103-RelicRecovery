use <utils.scad>

module tslot(l) {
    linear_extrude(height=r) {
        
    }
}


module sensormount()  {
    difference() {
        //round_2d(12) square(70);
        round_2d(2) square(32);
    }
}

sensormount();