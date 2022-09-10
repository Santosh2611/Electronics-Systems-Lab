/*
 It reads the state of a potentiometer (an analog input) and 
 turns on an LED only if the potentiometer goes above a 
 certain threshold level. It prints the analog value 
 regardless of the level.

 Regarding the circuit:
 (i) Potentiometer connected to analog pin 3. [Center Pin]
 (ii) Side pins of the potentiometer go to +5V and ground.
 (iii) LED connected from digital pin 13 to ground.

 Note: On most Arduino boards, there is already an LED on 
 the board connected to pin 13, so you don't need any extra 
 components for this example.
*/

// These constants won't change:
const int analogPin = A3; // Pin that the sensor is attached to
const int ledPin = 13; // Pin that the LED is attached to
const int threshold = 400; // An arbitrary threshold level that is in the range of the analog input

// The setup function runs once when you press reset or power the board:
void setup()
{
  pinMode(ledPin, OUTPUT); // Initialize the LED pin as an output
  Serial.begin(9600); // Initialize serial communications
}

// The loop function runs over and over again forever:
void loop()
{
  int analogValue = analogRead(analogPin); // Read the value of the potentiometer

  // If the analog value is high enough, turn on the LED:
  if (analogValue > threshold)
  {
    digitalWrite(ledPin, HIGH);
  }
  else
  {
    digitalWrite(ledPin, LOW);
  }

  Serial.println(analogValue); // Print the analog value
  delay(1); // Delay in between reads for stability
}
