char val; // Variable to store the data received from the serial port
int ledPin = 13; // LED Pin of Arduino

// The setup function runs once when you press reset or power the board:
void setup()
{
  pinMode(ledPin, OUTPUT); // Set pin D13 (RED-LED) as output
  Serial.begin(9600); // Start serial communications at 9,600 bits per second
}

// The loop function runs over and over again forever:
void loop()
{
  if (Serial.available())
  {
    // ID data is available to read now:
    val = Serial.read(); // Read the value and store it in a variable "val"
  }
  
  if (val == '0')
  {
    digitalWrite(ledPin, LOW); // Turn OFF Arduino LED
  } 
  else if (val == '1')
  {
    digitalWrite(ledPin, HIGH); // Turn ON Arduino LED
  }
  
  delay(10); // Delay in between reads for stability
}
