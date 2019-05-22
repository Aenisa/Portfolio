#include <Servo.h>
//3.21,3.05,(time for 180) .915
//4.625 inches in a second
Servo servoLeft; // Declares Servo
Servo servoRight; // Declares Servo

void setup() {
tone(4,3000, 1000);
delay(1000); // Sounds tone to predict brown out
servoLeft.attach(13); // Attaches servo
servoRight.attach(12); // Attaches servo

  servoLeft.writeMicroseconds(1700);
  servoRight.writeMicroseconds(1300);
  delay(2600); // Goes forward for 2.6 seconds
  servoLeft.writeMicroseconds(1700);
  servoRight.writeMicroseconds(1700);
  delay(1100); // turns right for 1.1 seconds
  servoLeft.writeMicroseconds(1700);
  servoRight.writeMicroseconds(1300);
  delay(2600); // forward
  servoLeft.writeMicroseconds(1700);
  servoRight.writeMicroseconds(1700);
  delay(1100); // right
  servoLeft.writeMicroseconds(1700);
  servoRight.writeMicroseconds(1300);
  delay(2600); // forward
        
servoLeft.detach(); // detaches servo
servoRight.detach(); // detaches servo
}

void loop() {
  // put your main code here, to run repeatedly:

}
