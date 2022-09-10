/*
  Blink:
  Turns on an LED on for five seconds, then off for two seconds, repeatedly.
*/

// The setup function runs once when you press reset or power the board:
void setup()
{
  pinMode(13, OUTPUT); // Initialize digital pin 13 as an output
}

// The loop function runs over and over again forever:
void loop()
{
  digitalWrite(13, HIGH); // Turn the LED on (HIGH is the voltage level)
  delay(5000); // Wait for five seconds
  digitalWrite(13, LOW); // Turn the LED off by making the voltage LOW
  delay(2000); // Wait for two seconds
}
