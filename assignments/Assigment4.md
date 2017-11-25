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


## Part 1 - ScreenData, ArrayList, 

Get the project folder ``asteroidsPart1`` [here](https://github.com/barcaxi/oop/blob/master/assignments/a4/asteroidsPart1.zip?raw=true). 

**Follow the instructions below precisely**.  Any deviation from this will mean you will lose marks.

This class diagram shows the structure of this part of the assignment when completed.

![alt text](../images/asteroidsPart1.png "Part 1 Class Diagram")

Run the Asteroids game.  You'll see a *SpaceShip* at the bottom of the screen, an *Asteroid* moving down the screen and perhaps a *FlyingSaucer* moving across the top of the screen.  Take time to **examine and understand this code thoroughly**.  


1.	Examine the ``ScreenData`` class shown above.  It contains:

	-	3 private instance variables - ``score``, ``lives`` and ``level``
	-	a constructor that initialises those variables
	-	8 getter, setter and increment methods 
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


2.	In the game so far there is only one asteroid being displayed.  Modify the ``Game`` class to support upto 5 asteroids by changing the instance variable ``asteroid``  to an arraylist of ``Asteroid``s:

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

	When a bullet collides with a asteroid remove the asteroid from the arraylist using code like this:

	```java
	asteroids.remove(a);

	```

