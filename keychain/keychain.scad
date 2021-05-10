module keychain_shape()
{
    height=3;
    cube([50,50,height]);
    translate([45,45,0]) {
        cylinder(height,10,10);
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

LINE_ONE="ONE";
LINE_TWO="TWO";
LINE_THREE="THREE";

module keychain_text() {
    translate([20,35,-20]) {
        linear_extrude(50) {
            text(LINE_ONE,font=font_style,halign="center",size=8);
        }
    }
    translate([25,20,-20]) {
        linear_extrude(50) {
            text(LINE_TWO,font=font_style,halign="center");
        }
    }
    translate([25,5,-20]) {
        linear_extrude(50) {
            text(LINE_THREE,font=font_style,halign="center");
        }
    }
}

difference() {
    keychain();
    keychain_text();
}