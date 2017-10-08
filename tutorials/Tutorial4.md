# Tutorial #4 - Composition

## Part 1 - Book "has-a" Author

1.	Run the program [tut04_01](https://github.com/barcaxi/oop/blob/master/code/tutorials/tut04_01/tut04_01.zip?raw=true) and observe it's output.
	
	Make sure you include the ``images`` folder in your project folder.

	Pay particular attention to the ``Book`` class and how it implements the "has-a" relationship with the ``Author`` class.

	> A Book has-a Author

	This is known as **composition** in Java.

2.	Open the program [tut04_02](https://github.com/barcaxi/oop/blob/master/code/tutorials/tut04_02/tut04_02.zip?raw=true).

3.	Examine the code in the ``setup()`` method.  Then modify the code in the ``Book`` class so that it supports an array of ``Author`` objects.  You only need to modify the code in ``Book`` class.

	When the ``Book`` class is modified correctly the code should show a book with 2 authors.
	

## Part 2 - Zack the Lizard

Zack is a lizard.  Flies annoy him.

This program illustrate composition again:

> A ``Lizard`` has-a ``Fly``

Read on...

Open the program [tut04_03](https://github.com/barcaxi/oop/blob/master/code/tutorials/tut04_03/tut04_03.zip?raw=true) and write the missing code for the ``Lizard`` class. 

![alt text](../images/Lizard.png "Lizard class")

The ``Lizard`` class has:

-	four private instance variables: ``fly``, ``img``, ``x``, and ``y``.  ``fly`` is an instance of the ``Fly`` class which you are given.

-	a constructor:

	```java
		public Lizard(Fly fly) {...}

	```

	Initialise the class variable ``fly`` with the constructor argument ``fly``.  Also, initialise the ``x`` and ``y`` values to ``0`` (zero).

-	public methods ``setX()``, ``getX()``, ``setY()``, ``getY()``, and ``display()`` which you are given.

-	``toString()`` which should return "[Lizard: x=*x*;y=*y*]" e.g. "[Lizard: x=100;y=200]"


1.	Complete the missing code in ``Lizard`` class.  If completed correctly the project should run.  A fly should annoy the lizard.

	![alt text](../images/LizardFly.gif "Lizard has-a Fly")


2.	Next, modify the code in the ``Lizard`` class so that it supports an array of 10 ``Fly`` objects.  You will not need to modify any code in the ``Fly`` class.

	Use this new ``display()`` method in the ``Lizard`` class:

	```java
	public void display()
	{
		img = loadImage(imageFile);
		setX(mouseX);
		setY(mouseY);
		image(img, getX(), getY());    

		for (int i=0; i<flies.length; i++) // flies array
		{
			flies[i].move();
			flies[i].display();
		}
	}

	```

	and use this code to test your modified ``Lizard`` class:

	```java
	Lizard lizard;
	Fly[] flies;

	void setup()
	{
		size(800, 800);
		noCursor();

		flies = new Fly[10];
		for(int i=0;i<flies.length;i++)
			flies[i]=new Fly();

		lizard = new Lizard(flies);
	}

	void draw()
	{
		background(0);  
		lizard.display();
		println(lizard);  
	}

	```


## Part 3 - Moons and Planets


Get the program folders [here](../code/tutorials/AllParts.zip?raw=true).

### Moon and Planet Classes


![alt text](../images/Moon1.png "Moon class")

A class called ``Moon`` is designed as shown in the class diagram.  It contains:

-	six private instance variables: ``name``, ``radius``, ``distance``, ``speed``, ``angle`` and ``orbitalPeriod``

-	one constructor to initialise the name, radius, distance, speed, and orbital period with the given values:

	```java
	public Moon(String name, float radius, float distance, float speed, int orbitalPeriod)

	```

	There is no default constructor for ``Moon``, as there are no defaults.

-	public getters/setters: ``getName()``, ``getRadius()``, ``getDistance()``, ``getSpeed()``, ``getOrbitalPeriod()``, ``setName()``, and ``setOrbitalPeriod()``. There are no setters for radius, distance, speed, and angle as these attributes cannot be changed.

-	A ``toString()`` method that returns "Moon: *moon-name* (orbit=*orbitPeriod*);", e.g., "Moon: earth moon(orbit=28);".

Open the test program ``TestMoon`` from the ``part1`` folder and write the code for the ``Moon`` class. Use the test program to test the constructor and public methods. Among other things, try changing the name of a moon, e.g.:

```java
moon = new Moon("Moon", 20, 100, 2, 28);
println(moon); // calls toString()
moon.setName("Earth Moon");
println(moon);

```

If your code is completed correctly, you should see a moon orbit the middle of the window.

![alt text](../images/PlanetHasAMoon.png "Planet has-a Moon")

A class called ``Planet`` is designed as shown in the class diagram. 
It contains:

-	six private instance variables: ``name``, ``radius``, ``distance``, ``speed``, ``angle`` and ``moon``.  ``moon`` is an object of the class ``Moon`` you have already created.  Assume each planet has one moon.

-	a constructor:

	```java
		public Planet(String name, float radius, float distance, float speed, Moon moon) {...}

	```

-	public methods - ``getName()``, ``getRadius()``, ``getDistance()``, ``getSpeed()``, ``getMoon()``, setRadius()``. There are no setters for name, distance, speed, angle, and moon as these attributes cannot be changed.

-	``toString()`` returns "Planet: *planet name* (r=*radius*;d=*distance*); Moon: *moon-name* (orbit=*orbitPeriod*);" e.g. "Planet: earth (r=25;d=200); Moon: Moon (orbit=28);"

Open the test program ``TestPlanet`` from the ``part1`` folder.  Add the code for your ``Moon`` class from earlier.  And write the code for the ``Planet`` class which uses the ``Moon`` class. Use the test program to test the constructor and public methods. 

Take note that you have to construct an instance of ``Moon`` before you can construct an instance of Planet. e.g.,

```java
Moon moon = new Moon("moon", 7.5, 50, 2, 28);
Planet earth = new Planet("earth", 25, 200, 1, moon);

// OR using an anonymouse Moon object

Planet earth = new Planet("earth", 25, 200, 1, new Moon("moon", 7.5, 50, 2, 28));

```

Note that both classes have similar class variables called name, radius, distance, speed and angle. However, they can be differentiated via the referencing instance. 

If your code is completed correctly, you should see a planet with a moon orbit the sun in the middle of the window.

Try:

1.	Printing the name and orbitalPeriod of the moon from a Planet instance.
(Hint: ``aPlanet.getMoon().getName()``, ``aPlanet.getMoon().getOrbitalPeriod()``).

2.	Introduce new methods (and test, of course) called ``getMoonName()`` and ``getMoonRadius()`` in the ``Planet`` class to return the name and radius of the moon of the Planet. For example,

	```java
	public String getMoonName() { ... }
	public float getMoonRadius() { ... }

	```







