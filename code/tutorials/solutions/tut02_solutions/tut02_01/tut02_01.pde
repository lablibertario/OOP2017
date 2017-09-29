int[] data = {10, 20, 30, 40, 50};  // diameters //<>//
int largest=0;

void setup()
{
  size(500, 200);
  
  largest=data[0];
  for (int i=0; i<data.length; i++)
  {
    if (data[i]>largest)
      largest=data[i];
  }
  
}

void draw()
{
  background(0, 0, 0);

  for (int i=0; i<data.length; i++)
  {
    ellipse(i*100, 100, largest, largest);
  }
}