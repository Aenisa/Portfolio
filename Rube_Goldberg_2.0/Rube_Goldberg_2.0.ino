
//include the servo library
#include <Servo.h> 
#include "CurieIMU.h" 

//create a servo object called servo1 
Servo servo1;  
 int buttonpin = 3;
 int counter = 0;

void setup()
{
pinMode (buttonpin, INPUT);
  //attach servo1 to pin 9 on the Arduino 101
  servo1.attach(9);
  
 pinMode(5, OUTPUT);
 pinMode(6, OUTPUT);

 // Initialise the IMU
 CurieIMU.begin();
 CurieIMU.attachInterrupt(eventCallback);

 // Increase Accelerometer range to allow detection of stronger taps (< 4g)
 CurieIMU.setAccelerometerRange(3);

 // Reduce threshold to allow detection of weaker taps (>= 750mg)
 CurieIMU.setDetectionThreshold(CURIE_IMU_TAP, 0.0000000000000000000000000000000000000000001); // (750mg)

 // Enable Double-Tap detection
 CurieIMU.interrupts(CURIE_IMU_TAP);
}


void loop()
{  
  //create a local variable to store the servo's position.
  int buttonstate;
  buttonstate = digitalRead(buttonpin);
  if (buttonstate == LOW)
  {
  int position;
   servo1.write(180); 
   delay(1000); 
  // To control a servo, you give it the angle you'd like it
  // to turn to. Servos cannot turn a full 360 degrees, but you
  // can tell it to move anywhere between 0 and 180 degrees.
  
  // Tell servo to go to 0 degrees
  servo1.write(0);     

  // Pause to get it time to move
  delay(1000);         
}
}

static void eventCallback()
{
 if (CurieIMU.getInterruptStatus(CURIE_IMU_TAP)) {
    if (CurieIMU.tapDetected(Z_AXIS, NEGATIVE))
    {
    digitalWrite(5, HIGH);
    digitalWrite(6, LOW);
    delay(250);
    digitalWrite(5, LOW);
    digitalWrite(6, LOW);
    delay(250);
    digitalWrite(5, HIGH);
    digitalWrite(6, LOW);
    delay(250);
    digitalWrite(5, LOW);
    digitalWrite(6, LOW);
    delay(250);
    }
   else if (CurieIMU.tapDetected(Z_AXIS, POSITIVE))
   {
    digitalWrite(5, LOW);
    digitalWrite(6, HIGH);
    delay(250);
    digitalWrite(5, LOW);
    digitalWrite(6, LOW);
    delay(250);
    digitalWrite(5, LOW);
    digitalWrite(6, HIGH);
    delay(250);
    digitalWrite(5, LOW);
    digitalWrite(6, LOW);
    delay(250);
   }
  else
  {
  digitalWrite(5, LOW);
  digitalWrite(6, LOW);
  } 
 }
}

