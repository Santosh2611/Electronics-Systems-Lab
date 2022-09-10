/*
  Controlling Relay with LDR Module:
*/

// This constant won't change:
const int digitalPin = 2; // Pin that the digital pin is attached to
const int ledPin = 13; // Pin that the LED is attached to
int digitalValue = 0;

// The setup function runs once when you press reset or power the board: 
void setup()
{ 
  pinMode(digitalPin, INPUT); // Initialize the digital pin as an input:
  pinMode(ledPin, OUTPUT); // Initialize the LED pin as an output:
}

// The loop function runs over and over again forever:
void loop()
{
  digitalValue = digitalRead(digitalPin); // Read the value

  // If the digital value is equal to 2, turn on the LED:
  if (digitalValue == HIGH)
  {
    digitalWrite(ledPin, HIGH);
  }
  else
  {
    digitalWrite(ledPin, LOW);
  }

}
