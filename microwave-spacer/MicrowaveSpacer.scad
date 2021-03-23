translate([-7.5,0,0]) {
   cube([15.0,160,5],center=false);
}

difference(){ 
   translate([0,175,0])
      cylinder(h=5,r=20.0);
   translate([0,175,-0.1])
      cylinder(h=7,r=15.0);
   translate([-15,175,-0.1])
      cube([30,25,35]);   
}   

difference() {
    translate([0,25,0]){
        rotate([0,0,90]){
           linear_extrude(height = 5){
               circle(r=50, $fn=3);
           }
        }
    }

    translate([0,15,-5]){
        rotate([0,0,90]){
           linear_extrude(height = 50){
               circle(r=40, $fn=3);
           }
        }
    }
}

