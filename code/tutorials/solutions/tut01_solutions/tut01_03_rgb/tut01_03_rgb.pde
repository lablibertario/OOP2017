
size(200, 200);

fill(255, 0, 0);            // red 
rect(10, 10, 180, 180);  
fill(0, 255, 0);            // green
ellipse(100, 100, 180, 180);

stroke(255, 255, 0);   // yellow line
line(10, 10, 190, 190); 


stroke(255, 0, 255);   // purple points
for (int i=10; i<190; i=i+5)
  point(i, 100);
  
  
fill(0, 0, 255);
triangle(10, 190, 100, 10, 190, 190);