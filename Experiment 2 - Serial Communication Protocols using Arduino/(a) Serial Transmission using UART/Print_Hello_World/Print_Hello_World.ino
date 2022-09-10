// The setup function runs once when you press reset or power the board:
void setup()
{
  Serial.begin(9600); // Initialize serial communications
}

// The loop function runs over and over again forever:
void loop()
{
  Serial.println("Hello, World!");
  delay(1); // Delay in between reads for stability
}
