import processing.serial.*;
Serial myPort; // Create object from Serial class
String val; // Variable to store the data received from the serial port

void setup()
{
  // On Windows machines, this generally opens in COM1.
  println(Serial.list());
  String portName = Serial.list()[2]; // Change the 0 to 1 or 2 etc., to match your port
  myPort = new Serial(this, portName, 9600);
}

void draw()
{
  if ( myPort.available() > 0 )
  {
    val = myPort.readStringUntil('\n'); // Read the value and store it in a variable "val"
  }
  println(val); // Print it out in the console
}
