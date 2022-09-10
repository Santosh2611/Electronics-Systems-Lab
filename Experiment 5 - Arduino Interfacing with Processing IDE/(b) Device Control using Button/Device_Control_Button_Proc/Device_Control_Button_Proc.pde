import controlP5.*; // Import ControlP5 library
import processing.serial.*;
Serial myPort;
ControlP5 cp5; // Create ControlP5 object
PFont font;

// Same as Setup in Arduino Program:
void setup()
{ 
  size(300, 250); // Window Size (Width, Height)
  printArray(Serial.list()); // Prints all the available serial ports
  myPort = new Serial(this, "COM7", 9600);
  
  // Add Butons to Empty Window:
  cp5 = new ControlP5(this); 
  font = createFont("calibri light bold", 20); // Custom fonts for buttons and title
  
  cp5.addButton("on") // "ON" is the name of button
  .setPosition(100, 50) // x and y coordinates of upper left corner of button
  .setSize(120, 70) // (width, height)
  .setFont(font);
  
  cp5.addButton("off") // "OFF" is the name of button
  .setPosition(100, 150) // x and y coordinates of upper left corner of button
  .setSize(120, 70) // (width, height)
  .setFont(font);
}

// Same as Loop in Arduino Program:
void draw()
{ 
  background(150, 0 , 150); // Background color of window (r, g, b) or (0 to 255)
  
  // Title to the Window:
  fill(0, 255, 0); // Text color (r, g, b)
  textFont(font);
  text("LED CONTROL", 80, 30); // ("TEXT", x-coordinate, y-coordinate)
}

// Add functions to buttons; When the button is pressed, it sends a particular char over serial port:
void on()
{
  myPort.write('1');
  println("1");
}

void off()
{
  myPort.write('0');
  println("0");
}
