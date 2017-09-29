public class Bubble
{
  float x;
  float y;
  float diameter;

  public Bubble()
  {
    x=random(width);      // random position along x axis
    y=height;             // start at bottom of window
    diameter=random(50);  // random diameter
  }

  public float getX()
  {
    return x;
  }
  
  public float getY()
  {
    return y;
  }

  public float getDiameter()
  {
    return diameter;
  }

  public void display()
  {
    fill(125, 50);
    ellipse(x, y, diameter, diameter);
  }

  public void move()
  {
    y--;
    x=x+random(-1, 1);
  }

  public String toString()
  {
    return "Bubble";
  }
}