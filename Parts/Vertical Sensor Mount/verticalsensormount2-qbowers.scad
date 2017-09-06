use <../scad_libs/utils.scad>
use <../scad_libs/parts.scad>
use <../scad_libs/variables.scad>



legs = [true, true, true, true];
legheight = 15;

t = 3;
xadd = 3;

linear_extrude(height = 4) translate([-28.7 - t,0,0]) {
    sensormount(hole = 3.1);
    y = 30;
    translate([15,-20,0]) square([4,y]);
}
linear_extrude(height = 15) {
    tslot();
    rotate([0,0,90]) tslot();
    rotate([0,0,-90]) tslot();
    
    difference() {
        translate([-tslot("o")-t,-tslot("o")-t,0]) square([tslot("o")+t+xadd, 2*(tslot("o") + t)]);
        translate([-tslot("o"),-tslot("o"),0]) square([tslot("o")+xadd, 2*tslot("o")]);
    }
    
}



/*rotate([180,0,0]) linear_extrude(height = legheight) {
    for(i = [0:3]) if(legs[i]) rotate([0,0,i * 90]) tslot();
}*/