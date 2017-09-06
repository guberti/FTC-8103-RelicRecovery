use <../scad_libs/utils.scad>
use <../scad_libs/parts.scad>
use <../scad_libs/variables.scad>



legs = [true, true, true, true];
legheight = 15;


linear_extrude(height = 4) sensormount(hole = 3.1);

rotate([180,0,0]) linear_extrude(height = legheight) {
    for(i = [0:3]) if(legs[i]) rotate([0,0,i * 90]) tslot();
}