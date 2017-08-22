$fn = 100;
use<utils.scad>


hole = 3.6;
bighole = 6.35;

mainx = 330;
mainy = 120;
mainbevel = 10;

standoffx = 314.7;
standoffy = mainy - (mainx-standoffx);

border = 2;

gmx = 30;
gmy = 30;
gmd = 8;

module hole() {circle(hole/2);}
module bighole() {circle(bighole/2);}


module main() {
    hull() {
        
        for(x = [mainbevel, mainx-mainbevel])
            for(y = [mainbevel, mainy-mainbevel])
                translate([x,y,0])
                    circle(mainbevel);
    }
}
module standoffholes() {
    translate([(mainx-standoffx)/2,(mainx-standoffx)/2,0])
        for(x=[0,standoffx])
            for(y=[0,standoffy])
                translate([x,y,0])
                    bighole();
}


module CMC() {
    
}
module GM() {
    
    for(t = [0:90:360])
        rotate([0,0,t])
        translate([gmd,0,0])
            hole();
    
    difference() {
        xysquare([gmx,gmy]);
        xysquare([gmx - 2*border, gmy - 2*border]);
    }
}
module CPDM() {
    
}
module CSC() {
    CMC();
}
module CDI() {
    
}

//nov3-5
//dec1-3
//dec 16-17


GM();

difference() {
    //main();
    //standoffholes();
}