

use <../scad_libs/utils.scad>
use <../scad_libs/parts.scad>

//sh = 

//battery vars
bx = 114;
by = 46.5;
bz = 35;

bt = 3; //wall thickness

mr = 2;


//sensormount();


module original() {
  import("../../Projects/ftc robot/editedThingySlide.stl");
}//original

module doubleslider() {
  square ([1, 6]); //to fill in the little hole
  rotate ([0, 0, 180])
    translate ([-15.5, 3])
      difference() {
        projection() 
          intersection() {
            original();
            translate ([0, -20.5, 1])
              cube ([35, 35, 1], center = true);
          }//intersection
          translate ([-12.91, 2])
            square (20, center = true);
      }//difference
}//doubleslider


doubleslider();



//cube ([114, 46.5, 35], center = true);





















