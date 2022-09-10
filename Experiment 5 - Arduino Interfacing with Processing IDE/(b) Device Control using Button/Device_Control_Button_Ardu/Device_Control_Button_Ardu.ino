// The setup function runs once when you press reset or power the board:
void setup()
{
  pinMode(13, OUTPUT); // Set pin D13 (RED-LED) as output
  Serial.begin(9600); // Start serial communications at 9,600 bits per second
}

// The loop function runs over and over again forever:
void loop()
{
  if( Serial.available() )
  {
    // ID data is available to read now:
    char val = Serial.read();
    if(val == '1')
    {
      digitalWrite(13, HIGH); // Turn ON Arduino LED
    }
    else if(val == '0')
    {
      digitalWrite(13, LOW); // Turn OFF Arduino LED
    }
  }
}
