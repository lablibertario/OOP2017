// runs one time
void setup() 
{
  // Set the size of the window
  size(640, 360);
  //background(0, 0, 0);
}

// loops continuously 
void draw() 
{
  background(0, 0, 0);
  fill(255, 255, 255); 

  ellipse(mouseX, height/2, 50, 50);  // draw ellipse using mouse x coordinate
  //ellipse(mouseX, height/2, mouseY/2, mouseY/2);  
  //ellipse(mouseX, mouseY, 50, 50);  // draw ellipse using mouse x coordinate
}