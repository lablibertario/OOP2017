void setup()
{
  size(640, 360);
  background(0, 0, 0);
}

void draw()
{
  // though empty MUST be here for mousePressed to work
}

void mousePressed()
{
  fill(255);  
  ellipse(mouseX, mouseY, 5, 5);
  textSize(18);
  text("("+mouseX+","+mouseY+")", mouseX, mouseY);
}