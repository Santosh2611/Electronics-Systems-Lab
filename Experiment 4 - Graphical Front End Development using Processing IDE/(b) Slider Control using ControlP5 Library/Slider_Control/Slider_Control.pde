import controlP5.*; // Import controlP5 library
ControlP5 cp5; // ControlP5 object

void setup()
{
  size(400, 250); // Output window size (length x breadth)
  cp5 = new ControlP5(this);
  cp5.addSlider("slider1").setPosition(100, 90).setSize(200, 20).setRange(0, 200);
  cp5.addSlider("slider2").setPosition(100, 140).setSize(200, 20).setRange(0, 200);
}

void draw()
{
  background(0); // Set background color to black
  float value = cp5.getController("slider1").getValue();
  cp5.getController("slider2").setValue(value);
  println(value);
}
