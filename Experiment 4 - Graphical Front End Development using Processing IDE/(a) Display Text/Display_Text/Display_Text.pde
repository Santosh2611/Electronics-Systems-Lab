PFont f; // Declare PFont variable

void setup()
{
  size(200, 200); // Output window size (length x breadth)
  f = createFont("Arial", 16, true); // Create font
}

void draw()
{
  background(255); // Set background color
  textFont(f, 16); // Specify font to be used
  fill(0); // Specify font color
  text("Hello, World!", 60, 100); // Display Text
}
