void setup()
{
  size(640, 360);
  background(0, 0, 0);
}

void draw()
{
  float x = random(width);
  float y= random(height);

  fill(random(255), random(255), random(255));
  //ellipse(x, y, 50, 50);
  ellipse(mouseX, mouseY, 50, 50);
}