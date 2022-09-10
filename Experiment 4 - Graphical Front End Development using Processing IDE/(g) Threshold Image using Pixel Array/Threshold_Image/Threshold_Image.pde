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
  float threshold = 127;
  source.loadPixels();
  destination.loadPixels();
  for (int x = 0; x < source.width; x++)
  {
    for (int y = 0; y < source.height; y++)
    {
      int loc = x + y*source.width;
      
      // Test the brightness against the threshold:
      if (brightness(source.pixels[loc]) > threshold)
      {
        destination.pixels[loc] = color(255); // White
      }
      else
      {
        destination.pixels[loc] = color(0); // Black
      }
    }
  }
  
  destination.updatePixels(); // Update the pixels in destination
  image(destination, 0, 0); // Display the destination
}
