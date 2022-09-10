PImage source; // Source image
PImage destination; // Destination image

void setup()
{
  size(1024, 768); // Output window size (length x breadth)
  source = loadImage("Lighthouse.jpg");
  destination = createImage(source.width, source.height, RGB);
}

void draw()
{
  source.loadPixels();
  destination.loadPixels();
  for (int x = 0; x < source.width; x++)
  {
    for (int y = 0; y < source.height; y++)
    {
      int loc = x + y*source.width;
      
      // The functions red(), green(), and blue() pull out the three color components from a pixel:
      float r = red(source.pixels[loc]);
      float g = green(source.pixels[loc]);
      float b = blue(source.pixels[loc]);
      
      float gray = (r+g+b)/3;
      destination.pixels[loc] = color(gray);
    }
  }
  
  destination.updatePixels(); // Update the pixels in destination
  image(destination, 0, 0); // Display the destination
}
