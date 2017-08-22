$fn=100;

w = 7.2;
l = 2.4;
t = 1.3;
h = 6;



clip(h,t,2);
translate([0,0,h-t])
    lip_s(3);


module clip(h,t,t2) {
    linear_extrude(height=h) {
        difference() {
            translate([t-t2,0,0])
                square([w+t2, l+ (2*t)]);
            translate([t,t])
                square([w,l]);
        }
        
        translate([w+t+0.5,0,0])
            semi(t+0.3);
        
        translate([w+t+0.5,l+(2*t),0])
            rotate([0,0,180])
                semi(t+0.3);
    }
}

module semi(r) {
    difference() {
        circle(r);
        translate([-r,-r,0])
            square([2*r,r]);
    }
}

module lip_s(h) {
    
    x=10.9;
    y=3.2;
    
    hx = t - (x-w)/2;
    hy = t - (y-l)/2;
    linear_extrude(height=h) {
        difference() {
            translate([hx-t,hy-t,0])
                square([x+(2*t), y+(2*t)]);
            translate([hx,hy,0])
                square([x+t,y]);
        }
    }
}
module lip_c(h) {
    
}