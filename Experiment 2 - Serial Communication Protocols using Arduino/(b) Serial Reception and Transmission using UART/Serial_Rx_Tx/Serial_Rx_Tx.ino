char inputChar = ' '; // A character variable to hold incoming data

// The setup function runs once when you press reset or power the board:
void setup()
{
  Serial.begin(9600); // Initialize serial communications
}

// The loop function runs over and over again forever:
void loop()
{
  if (( ( Serial.available() ) > ( 0 ) ))
  {
    inputChar = Serial.read();
    Serial.print("The received character is: "); 
    Serial.println(inputChar);
  }
}

