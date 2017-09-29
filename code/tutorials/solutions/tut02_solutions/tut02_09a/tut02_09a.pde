import java.util.ArrayList;

ArrayList<Bubble> bubbles;                  // Declare arraylist of Bubble objects

void setup()
{
  size(300, 300);
  bubbles = new ArrayList<Bubble>();        // Create arraylist of Bubble objects
  bubbles.add(new Bubble());                // add about 3 Bubble objects to arraylist
  bubbles.add(new Bubble());
  bubbles.add(new Bubble());

  // find bubble with largest diameter
  float largest=bubbles.get(0).getDiameter();
  for (int i=0; i<bubbles.size(); i++)
  {
    if (bubbles.get(i).getDiameter()>largest)
      largest=bubbles.get(i).getDiameter();
  }
  println("Bubble with largest diameter = " + largest);
}

void draw()
{
  background(185, 223, 234);

  for (int i=0; i<bubbles.size(); i++)
  {
    bubbles.get(i).move();
    bubbles.get(i).display();
  }
  println(bubbles.size() + " bubbles");
}