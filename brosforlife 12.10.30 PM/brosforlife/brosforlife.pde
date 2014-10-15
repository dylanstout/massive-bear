//a
import processing.serial.*;

import cc.arduino.*;

Arduino arduino;
//update
void setup() {
 size(1000, 500);

 // Prints out the available serial ports.
 println(Arduino.list());
 
 // Modify this line, by changing the "0" to the index of the serial
 // port corresponding to your Arduino board (as it appears in the list
 // printed by the line above).
 arduino = new Arduino(this, Arduino.list()[5], 57600);
 
 // Alternatively, use the name of the serial port corresponding to your
 // Arduino (in double-quotes), as in the following line.
 //arduino = new Arduino(this, "/dev/tty.usbmodem621", 57600);
 
 // Set the Arduino digital pins as inputs.
 for (int i = 0; i <= 13; i++)
   arduino.pinMode(i, Arduino.INPUT);
}

void draw() {
 background(3, 166, 120);
 textSize(100);
 
 // Draw a filled box for each digital pin that's HIGH (5 volts).
 for (int i = 0; i <= 13; i++) {
   if (arduino.digitalRead(i) == Arduino.HIGH)
     text("Bros 4 Lyfe;)", 150, 275);
     fill(255);

 }
}
