legs = [true, true, true, true];

module round(r) { minkowski() {
    sphere(r);
    children();
} }

module tslot(l) {
    linear_extrude(height=r) {
        
    }
}