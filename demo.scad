use <soften/cube.scad>
use <soften/hole.scad>

difference() {
  translate([0,0,25]) soft_cube(50, center=true, r=5, $fn=64);
  translate([0,0,50]) hole(d=25,h=25,top_r=5, bottom_r=6);
}
