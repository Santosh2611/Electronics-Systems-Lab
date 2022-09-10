PImage img;

void setup()
{
  size(1024, 768); // Output window size (length x breadth)
  img = loadImage("Penguins.jpg"); // Make a new instance of a PImage by loading an image file.
}

void draw()
{
  background(0); // Set background color to black
  image(img, 0, 0, width/2, height); // Displays the image at point (0, 0) at half of its size.
  image(img, 512, 0, width/2, height/2); // The image() function displays the image at a location, in this case the point (512,0).
}
