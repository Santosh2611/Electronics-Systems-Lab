// The setup function runs once when you press reset or power the board:
void setup()
{
  Serial.begin(9600); // Start serial communications at 9,600 bits per second
}

// The loop function runs over and over again forever:
void loop()
{
  Serial.println("Hello, World!");
  delay(100); // Delay in between reads for stability
}
