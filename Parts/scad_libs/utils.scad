$fn = 100;

module round(r) { minkowski() {
    sphere(r);
    children();
} }
module round_2d(r) { minkowski() {
    circle(r);
    children();
} }



