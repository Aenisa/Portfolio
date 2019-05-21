/* program should make the light blink 5 times in a second. The light will be off 3 times the time it is on.*/
void setup() {
pinMode (13, OUTPUT);

}

void loop() {
digitalWrite(13, HIGH); //Turns light on
delay(50);
digitalWrite(13, LOW); // Turns light off
delay(150);
}
