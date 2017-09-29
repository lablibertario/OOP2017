PImage cardImage;    // image 
int imageWidth=71;   // used to space cards across the window
int cards[];         // cards array
final int NO_OF_CARDS = 5;
final int MAX_CARD_VALUE = 52;

void setup()
{   
  size(355, 96);  // width=71*5
  //noLoop();  // draw() called just once!

  // create card array
  cards = new int[NO_OF_CARDS];

  // pick & put 5 random card values into array
  for (int i=0; i<NO_OF_CARDS; i++)
  {
    boolean unique;
    int card;
    do
    {
      unique=true;  // assume random card is unique for now
      card=(int)random(1, MAX_CARD_VALUE);

      // check if it is unique
      for (int j=0; j<NO_OF_CARDS; j++)
      {
        if (cards[j]==card)  // no unique
        {
          unique=false;
          break;
        }
      }
    }
    while (unique==false);
    
    cards[i]=card;  // store in array

  }
}

void draw()
{
  // display cards 
  for (int i=0; i<NO_OF_CARDS; i++)
  {
    cardImage = loadImage("images/"+cards[i]+".png");   // load card image
    image(cardImage, imageWidth*i, 0);                  // display card image on window
  }
}