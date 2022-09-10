// The setup function runs once when you press reset or power the board:
void setup()
{
  Serial.begin(9600); // Initialize serial communications
  pinMode(13 , OUTPUT); // Initialize digital pin 13 as an output
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
      digitalWrite(13, HIGH); // Turn the LED on by making the voltage HIGH
      delay(2000); // Wait for two seconds
    }
    else
    {
      digitalWrite(13, LOW); // Turn the LED off by making the voltage LOW
      delay(2000); // Wait for two seconds
    }
  }
}
