import controlP5.*; // Import controlP5 library
ControlP5 controlP5; // ControlP5 object
PFont f; // Declare PFont variable

void setup()
{
  size(380,260); // Output window size (length x breadth)
  smooth();
  f = createFont("Arial",16,true); // Create Font
  controlP5 = new ControlP5(this);
  // Description: A bang controller triggers an event when pressed.
  // Parameters: name, x, y, width, height
  controlP5.addBang("bang1", 10, 10, 20, 20);
  // Description : A button executes after release.
  // Parameters : name, value (float), x, y, width, height
  controlP5.addButton("button1", 1, 70, 10, 60, 20);
  // Description : A toggle can have two states, TRUE and FALSE where TRUE has the value 1 and FALSE has the value 0.
  // Parameters : name, default value (boolean), x, y, width, height
  controlP5.addToggle("toggle1", false, 170, 10, 20, 20);
  // Description : A slider is either used horizontally or vertically.
  // Parameters : name, minimum, maximum, default value (float), x, y, width, height
  controlP5.addSlider("slider1", 0, 255, 128, 10, 80, 10, 100); // Width is bigger, you get a horizontal slider.
  controlP5.addSlider("slider2", 0, 255, 128, 70, 80, 100, 10); // Height is bigger, you get a vertical slider.
  // Description : Round turning dial knob.
  // parameters : name, minimum, maximum, default value (float), x, y, diameter
  controlP5.addKnob("knob1", 0, 360, 30, 70, 120, 50);
}

void draw()
{
  background(0); // Set background color to black
  textFont(f,16); // Specify font to be used
  fill(255); // Specify font color
  text("Bang", 20, 250);
  text("Button", 60, 250);
  text("Toggle", 110, 250);
  text("Slider1", 170, 250);
  text("Slider2", 240, 250);
  text("Knob", 310, 250);
  text(controlP5.getController("bang1").getValue(), 10, 230);
  text(controlP5.getController("button1").getValue(), 60, 230);
  text(controlP5.getController("toggle1").getValue(), 110, 230);
  text(controlP5.getController("slider1").getValue(), 160, 230);
  text(controlP5.getController("slider2").getValue(), 230, 230);
  text(controlP5.getController("knob1").getValue(), 300, 230);
}

void controlEvent(ControlEvent theEvent)
{
  /* Events triggered by controllers are automatically forwarded to the controlEvent method.
  By checking the name of a controller one can  distinguish which of the controllers has been changed. */
  /* Check if the event is from a controller, otherwise you'll get an error when clicking other
  interface elements like Radio button that don't support the  controller() methods. */
  if(theEvent.isController())
  {
    print("control event from : "+theEvent.getController().getName());
    println(", value : "+theEvent.getController().getValue());
  }
}
