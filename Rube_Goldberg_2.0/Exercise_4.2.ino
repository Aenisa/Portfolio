/*The program should have the bot turn right in place 30 degrees, 60, then 90. Each turn should have a short stop seperating them. */
#include <Servo.h>
Servo servoLeft; 
Servo servoRight;
void setup() {
tone (4, 3000, 1000);
delay (1000);
servoLeft.attach (13); // Connects servoLeft to pin 12
servoRight.attach (12); // Connects servoRight to pin 13
  int b = 258.33; // b variable is declared as 200
for (int i=0;i<3;i++){ //For loop should repeat 3 times
  servoLeft.writeMicroseconds(1700); 
  servoRight.writeMicroseconds(1700); // ServoLeft and servoRight are both 1700 microseconds to make the bot spin right in place
  delay(b); // the delay occurs for variable b microseconds
  servoLeft.writeMicroseconds(1500); // servoLeft is still
  servoRight.writeMicroseconds(1500); //servoRight is still
  delay(1000); // wait for a second
  b = b + 258.33; // 200 is added to variable b. This means that the delay values for each of the loops is as follows: 258.33,516,67,775 = 1.2 seconds
} 
/*servoLeft.writeMicroseconds(1700);
servoRight.writeMicroseconds(1700);
delay(1550);*/
servoLeft.detach();
servoRight.detach();
}

void loop() {
  // No code here

}
