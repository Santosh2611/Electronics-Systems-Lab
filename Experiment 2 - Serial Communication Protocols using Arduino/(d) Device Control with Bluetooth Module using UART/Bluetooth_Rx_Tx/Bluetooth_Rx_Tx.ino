// These constants won't change:
const int ledPin1 = 13; // Pin that the LED is attached to
const int ledPin2 = 2; // Pin that the LED is attached to

// The setup function runs once when you press reset or power the board:
void setup()
{
  Serial.begin(9600); // Initialize serial communications
  pinMode(ledPin1 , OUTPUT); // Initialize the LED pin 1 as an output
  pinMode(ledPin2 , OUTPUT); // Initialize the LED pin 2 as an output
}

// The loop function runs over and over again forever:
void loop()
{
  if (( ( Serial.available() ) > ( 0 ) ))
  {
    char inputChar = Serial.read();
    Serial.print("The received character is: "); 
    Serial.println(inputChar);
    if (inputChar == 'A' )
    {
      digitalWrite(ledPin1, HIGH); // Turn the LED on by making the voltage HIGH
      digitalWrite(ledPin2, LOW); // Turn the LED off by making the voltage LOW
    }
    else if (inputChar == 'B' )
    {
      digitalWrite(ledPin1, LOW); // Turn the LED off by making the voltage LOW
      digitalWrite(ledPin2, HIGH); // Turn the LED on by making the voltage HIGH
    }
  }
}
