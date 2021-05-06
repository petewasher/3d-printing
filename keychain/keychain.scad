module keychain_shape()
{
    cube([50,50,5]);
    translate([45,45,0]) {
        cylinder(5,10,10);
    }
}

module keychain() {
    minkowski() {
        difference(){
            keychain_shape();
            translate([45,45,-1])
            {
                cylinder(7,5,5);
            }
        }
        
        sphere(1.5);
    }
}
font_style="DIN Schablonierschrift";

module keychain_text() {
    translate([25,20,-20]) {
        linear_extrude(50) {
            text("ROOF",font=font_style,halign="center");
        }
    }
    translate([25,5,-20]) {
        linear_extrude(50) {
            text("BARS",font=font_style,halign="center");
        }
    }
}

difference() {
//text("hello");
keychain();
    keychain_text();
}