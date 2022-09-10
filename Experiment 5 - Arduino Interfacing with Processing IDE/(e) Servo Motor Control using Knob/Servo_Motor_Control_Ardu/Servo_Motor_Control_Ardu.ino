#include <Servo.h>
Servo myservo; // Create servo object to control a servo
int servoPin = 2; // Connect yellow servo wire to digital GPIO pin 2 (D2 of Arduino), must be PWM (Pulse Width Modulation)
int val = 0; // Variable to store the data received from the serial port

// The setup function runs once when you press reset or power the board:
void setup()
{
  myservo.attach(servoPin); // Attach the servo to the PWM pin
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
  
  myservo.write(val); // Set the servo position
  delay(15); // Wait for the servo to get there
}
