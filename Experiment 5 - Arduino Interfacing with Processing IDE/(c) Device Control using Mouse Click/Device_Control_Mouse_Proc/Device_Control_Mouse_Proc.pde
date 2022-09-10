import processing.serial.*;
PFont f;
Serial myPort; // Create object from Serial class
String val; // Variable to store the data received from the serial port

void setup()
{
  size(200, 200); // Output Window Size (Width, Height)
  f = createFont("Arial", 16, true); // Create Font
  String portName = Serial.list()[2]; // Change the 0 to 1 or 2 etc., to match your port
  myPort = new Serial(this, portName, 9600);
}

void draw() 
{
  background(255); // Set background color
  textFont(f, 14); // Specify font to be used
  fill(0); // Specify font color
  text("Left Click - Device ON!", 20, 100); // Display Text
  text("Right Click - Device OFF!", 20, 120); // Display Text
  
  if (mousePressed == true)
  { 
    // If clicked in the window:
    if (mouseButton == LEFT)
    {
      myPort.write('1'); // Send a 1 (HIGH)
      println("1");
    }
    else if (mouseButton == RIGHT)
    {
      myPort.write('0'); // Send a 0 (LOW)
      println("0");
    }
  }
}
