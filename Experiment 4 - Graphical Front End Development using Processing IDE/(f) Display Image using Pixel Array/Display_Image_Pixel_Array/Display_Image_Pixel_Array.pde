PImage img;

void setup()
{
  size(1024, 768); // Output window size (length x breadth)
  img = loadImage("Tulips.jpg");
}

void draw()
{
  loadPixels(); // Call loadPixels() on the PImage to read its pixels.
  img.loadPixels();
  for (int x = 0; x < width; x++ )
  {
    for (int y = 0; y < height; y++ )
    {
      int loc = x + y*width;
      
      // The functions red(), green(), and blue() pull out the three color components from a pixel:
      float r = red(img.pixels [loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      pixels[loc] = color(r, g, b); // Set the display pixel to the image pixel
    }
  }
  
updatePixels();
}
