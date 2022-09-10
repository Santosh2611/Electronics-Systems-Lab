import processing.serial.*;
Serial myPort; // Create object from Serial class
import controlP5.*; // Import controlP5 library
ControlP5 controlP5; // ControlP5 object
PFont f; // Declare PFont variable

void setup()
{
  size(200, 200); // Output Window Size (Width, Height)
  String portName = Serial.list()[2]; // Change the 0 to 1 or 2 etc., to match your port
  myPort = new Serial(this, portName, 9600);
  
  smooth();
  f = createFont("Arial", 16, true); // Create Font
  controlP5 = new ControlP5(this);
  
  // Description : Round turning dial knob
  // Parameters : name, minimum, maximum, default value (float), x, y, diameter
  controlP5.addKnob("knob1", 0, 360, 30, 50, 40, 100);
}

void draw()
{
  background(255); // Set background color to black
  textFont(f, 16); // Specify font to be used
  fill(0); // Specify font color
  text("Knob", 310, 250);
  text(int(controlP5.getController("knob1").getValue()), 90, 190);
}

void controlEvent(ControlEvent theEvent)
{
  if(theEvent.isController())
  {
    print("control event from : "+theEvent.getController().getName());
    println(", value : "+int(theEvent.getController().getValue()));
    myPort.write(int(theEvent.getController().getValue()));
  }
}
