// Copyright 2018 Don Bowman <db@donbowman.ca>
// Released under Apache 2.0 License
rotate([0,180,0])
{
  translate([0,12,-5])

  cylinder(d=12.8, h=5, $fn=150);

  difference()
  {
    cube([19.5, 40.0,4.5],center=true);

    translate([-12,0,-1.5])
    rotate([0,90,0])
    cylinder(d=2.5,h=25, $fn=100);

    translate([8,-11,2])
    mirror([0,0,0])
    rotate([0,0,90])
    scale([1.7,1.7,1])
    linear_extrude(height = 1, center = true, convexity = 10, twist = 0);

    // Remove these 4-lines to de-brand
    // (Or put your own name on!)
    rotate([0,0,-90])
    translate([-42.8/4,-19.5/4,0])
    linear_extrude(2.25)
    text("Don");
  }
}
