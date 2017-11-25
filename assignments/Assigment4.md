# Assignment 4 - Asteroids

## Contents


- [Part 1](#part-1) [%]



## Submission Details

The deadline for electronic submissions is midnight Friday 22nd December 2017.  Submit your code via the link on [noucamp.org](http://noucamp.org).  

The deadline for paper submissions is Friday 22nd December 2017.  Submit your paper submission at PR3316.  The paper submission will include a [Cover Sheet](https://github.com/barcaxi/oop2017/blob/master/assignments/a4CoverSheet.doc?raw=true) and the completed journal.


**A note on plagiarism and cheating**

If any of the code submitted by you is deemed copied from or by someone else it will be formally 
reported to the Head of School of Science and a Disciplinary Committee will be convened to deal with this issue.  You do not want that to happen!!

Never copy code from someone else or another source. Never give your code to someone else. Keep your
code safely in your own possession. Plagiarism and cheating are very serious academic offenses
with serious consequences for your future academic studies and work opportunities. Under
current guidelines all students involved in plagiarism or cheating must be reported to the Head
of School where a Disciplinary Committee will deal with the issue.


## Introduction

Note: For each part you should have separate folders (``asteroidsPart1``, ``asteroidsPart2``, etc). 
Some of the classes you create in one part may be copied into another (and perhaps modified for the purposes of that part).

You will need to keep a journal that records a brief description of your work on the assignment.  Please complete this log on a daily basis.  Your supervising lecturer will examine it from time to time and marks will be awarded for completing it correctly.


## Part 1 – ScreenData, ArrayList, Reload

Get the project folder ``asteroidsPart1`` [here](https://github.com/barcaxi/oop/blob/master/assignments/a4/asteroidsPart1.zip?raw=true). 

**Follow the instructions below precisely**.  Any deviation from this will mean you will lose marks.

This class diagram shows the structure of this part of the assignment when completed.

![alt text](../images/asteroidsPart1.png "Part 1 Class Diagram")

Run the Asteroids game.  You'll see a *SpaceShip* at the bottom of the screen, an *Asteroid* moving down the screen and perhaps a *FlyingSaucer* moving across the top of the screen.  Take time to **examine and understand this code thoroughly**.  


1.	Examine the ``ScreenData`` class shown above.  It contains:

	-	3 private instance variables - ``score``, ``lives`` and ``level``
	-	a constructor that initialises those variables
	-	8 getter, setter and incrementer methods 
	-	a ``toString()`` method that returns - [ScreenData:score=*score*;lives=*lives*;level=*level*]

	Write the missing code for the getters, setters, incrementers and ``toString()``. 

	Test your solution by adding the following tester code to the project ``setup()`` method:

	```java
	ScreenData screenData = new ScreenData();
	println(screenData);
	screenData.setScore(100);
	screenData.incScore(10);
	println("score="+screenData.getScore());
	screenData.setLives(3);
	screenData.addLife();
	screenData.addLife();
	screenData.loseLife();
	println("lives="+screenData.getLives());
	screenData.incLevel();
	println("level="+screenData.getLevel());
	println(screenData);

	```


	It should print:

	```java
	[ScreenData:score=0;lives=3;level=1]
	score=110
	lives=4
	level=2
	[ScreenData:score=110;lives=4;level=2]

	```

	Make sure it prints this using the tester code provided.  Attention to detail is important.  Marks are at stake.


1.	In the game so far there is only one asteroid being displayed.  Modify the ``Game`` class to support upto 5 asteroids by changing the instance variable ``asteroid``  to an arraylist of ``Asteroid``s:

	```java
	// asteroid = new Asteroid();
	ArrayList<Asteroid> asteroids;

	```


	This modification is going to cause a number of compilation errors.  You will have to fix these errors so your game can handle an arraylist of asteroids.  Basically, you'll have to update the code to:

	-	add the asteroids to the arraylist
	-	display the asteroids in the arraylist
	-	check for asteroids in the arraylist colliding with a bullet

	Use an *enhanced for loop* in your solution for your arraylist.

	When completed you should have 5 asteroids appearing in the game.

	Hint: When a bullet collides with a asteroid remove the asteroid from the arraylist using code like this:

	```java
	asteroids.remove(a);

	```


1.	You'll have noticed that you if you miss when firing a bullet you cannot fire another bullet.  Find the label *Part 1 (reload)* in the ``Game`` class and at this location in the code reload the spaceship bullet only when a missed bullet goes beyond the top of the screen. 


1.	When a bullet hits/collides with an asteroid briefly change the background color of the screen to red.


See video [here](https://media.heanet.ie/page/1fa0eedbe30a856f42924b43960a7169) for an example of how Part 1 should run when done.


## Part 2 – SpaceObject abstract class

Only begin this part when you have completed or attempted all you can of *Part 1*.  

Make a copy of your ``asteroidsPart1`` project folder, paste and rename it ``asteroidsPart2``.  Use ``asteroidsPart2`` for this part of the assignment.  You will need to rename the tester program for this part to ``asteroidsPart2``.

1.	Create a new class called ``SpaceObject`` as shown in this class diagram:

	![alt text](../images/asteroidsPart2.png "Part 2 Class Diagram")

	It contains:

	-	4 private instance variables - ``x``, ``y``,``radius`` and ``speed``
	-	a default constructor that initialises those variables to 0 (zero)
	-	an overloaded constructor that initialises those variables with specific values passed as arguments
	-	10 getter, setter and incrementer methods 
	-	a ``toString()`` method that returns - [SpaceObject:x=*x*;y=*y*;radius=*radius*;speed=*speed*]

	Write the missing code for the getters, setters, incrementers and ``toString()``. 

	Test your solution by adding the following tester code to the project ``setup()`` method:

	```java
	SpaceObject spaceObject = new SpaceObject();
	println(spaceObject);
	spaceObject.setX(100);
	spaceObject.incX();
	println("x="+spaceObject.getX());
	spaceObject.setY(200);
	spaceObject.incY();
	println("y="+spaceObject.getY());
	spaceObject.setRadius(20);
	println("radius="+spaceObject.getRadius());
	spaceObject.setSpeed(25);
	println("speed="+spaceObject.getSpeed());
	println(spaceObject);

	```


	It should print:

	```java
	[SpaceObject:x=0;y=0;radius=0;speed=0.0]
	x=101
	y=201
	radius=20
	speed=25.0
	[SpaceObject:x=101;y=201;radius=20;speed=25.0]

	```

	Make sure it prints this using the tester code provided.


1.	Make the ``SpaceObject`` class ``abstract``.  Some code in the project ``setup()`` method will need to be removed now.

1.	Add the abstract method ``display()`` to ``SpaceObject``:

	```java
	public abstract void display();

	```

1.	``SpaceObject`` provides one class for the instance variables - ``x``, ``y``,``radius`` and ``speed`` and it's various methods.  Have all the classes in the project that use these variables **inherit** them from ``SpaceObject``.  Also, remove all *shadow instance variables* from these subclasses.  

	This will cause lots of compilation errors in your subclasses now.  Update each of the appropriate subclasses one at a time and fix these errors.  Be careful!

	When finished there should be no shadow instance variables in any subclass of ``SpaceObject``.  Test the game still works.


1.	You may have noticed that only one flying saucer appears during each game.  When one appears it actually continues to be displayed, but off screen to the right.  Find the code where the flying saucer is displayed in ``Game`` and remove any flying saucer that is no longer visible.  Add the method below to ``FlyingSaucer`` to help in your solution:

	```java
	public boolean visible()
	{
	  // Note: multiply x by speed to get correct x value
	  // ...
	}

	```

	This method needs to return true when the flying saucer is visible and false when not.  Only one flying saucer should appear at a time.


See video [here](https://media.heanet.ie/page/e6f113ffb11213e2fb6b5d07b862a209) for an example of how Part 2 should run when done.

## Part 3 – OutOfScreenException exception

Only begin this part when you have completed or attempted all you can of *Part 2*.  

Make a copy of your ``asteroidsPart2`` project folder, paste and rename it ``asteroidsPart3``.  Use ``asteroidsPart3`` for this part of the assignment.  You will need to rename the tester program for this part to ``asteroidsPart3``.

1.	Create a class called ``OutOfScreenException``.  See the Java Doc file [here](http://noucamp.org/oop/2017/a4/doc/OutOfScreenException.html).  **You MUST create the class exactly as required in the Java documentation given**. 

1.	You may have noticed that the spaceship can be moved outside the bounds of the screen.  

	Modify the code in the ``SpaceShip`` class method ``incX()`` to throw a ``OutOfScreenException`` **before not when** the spaceship attempts to leave the bounds of the game screen.  

	Modify the code in ``Game`` to catch the exception and print the message returned.

	You should prevent the spaceship from moving outside the screeen boundary.


See video [here](https://media.heanet.ie/page/5da93dbc65408053f89682ab0be1e6e4) for an example of how Part 3 should run when done.

