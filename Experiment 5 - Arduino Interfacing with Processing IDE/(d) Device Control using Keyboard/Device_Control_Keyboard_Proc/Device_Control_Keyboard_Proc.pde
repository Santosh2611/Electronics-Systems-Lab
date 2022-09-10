import processing.serial.*;
PFont f; // Declare PFont variable
Serial myPort; // Create object from Serial class
String val; // Variable to store the data received from the serial port

void setup()
{
  size(220, 200); // Output Window Size (Width, Height)
  f = createFont("Arial", 16, true); // Create Font
  String portName = Serial.list()[2]; // Change the 0 to 1 or 2 etc., to match your port
  myPort = new Serial(this, portName, 9600);
}

void draw()
{
  background(255); // Set background color to black
  textFont(f, 14); // Specify font to be used
  fill(0); // Specify font color
  text("'A' in Keyboard - Device ON!", 20, 100); // Display Text
  text("'B' in Keyboard - Device OFF!", 20, 120); // Display Text
}

void keyPressed()
{
  if (key == 'A' || key == 'a')
  {
    myPort.write('1'); // Send a 1 (HIGH)
    println("1");
  }
  else if (key == 'B' || key == 'b')
  {
    myPort.write('0'); // Send a 0 (LOW)
    println("0");
  }
}
