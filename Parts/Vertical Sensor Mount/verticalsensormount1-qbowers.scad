use <../scad_libs/utils.scad>
use <../scad_libs/parts.scad>
use <../scad_libs/variables.scad>



legs = [true, true, true, true];

linear_extrude(height = 4) sensormount(hole = 3);

rotate([180,0,0]) linear_extrude(height = 15) {
    for(i = [0:90:360]) rotate([0,0,i]) translate([-12.7,0,0]) tslot();
}