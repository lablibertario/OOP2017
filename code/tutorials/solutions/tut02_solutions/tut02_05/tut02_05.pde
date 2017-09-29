import java.util.ArrayList;

ArrayList<Integer> data;

void setup()
{
  size(500, 200);
  
  // add 5 values to the data arraylist here
  data = new ArrayList<Integer>();
  data.add(new Integer(10));
  data.add(new Integer(20));
  data.add(new Integer(30));
  data.add(new Integer(40));
  data.add(new Integer(50));
  
}

void draw()
{
  background(255, 255, 255);
  fill(0, 0, 255);
  
  for (int i=0; i<data.size(); i++)
    rect(0, i*20, data.get(i), 20);
}