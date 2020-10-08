Die bob;

void setup()
{
  size(550,550);
  textAlign(CENTER,CENTER);
  noLoop();
}
void draw()
{
  background(200);
  int sum = 0;
    for(int y = 50; y < 500; y = y + 50) 
    {
      for (int x = 50; x < 500; x = x + 50) 
      {
        bob = new Die(x,y);
        bob.show();
        if (bob.digit == 1) {
        sum = sum + 1;
        }
        if (bob.digit == 2) {
        sum = sum + 2;
        }
        if (bob.digit == 3) {
        sum = sum + 3;
        }
        if (bob.digit == 4) {
        sum = sum + 4;
        }
        if (bob.digit == 5) {
        sum = sum + 5;
        }
        if (bob.digit == 6) {
        sum = sum + 6;
        }
    }
  }
  fill(0);
  text("Sum of the Dice: " + sum,275,525);
}

void mousePressed() {
  redraw();
}

class Die //models one single dice cube
{
  int AddUp = 0;
  int myX, myY;
  int digit = 1;
  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }

  void roll()
  {
    digit = ((int)(Math.random()*6)+1);
  }

  void show()
  {
    fill(255);
    rect(myX,myY,50,50);
    if (digit == 1) {
      fill(128,0,0);
      ellipse(myX+25,myY+25,10,10);
    }
    if (digit == 2) {
      fill(153,0,0);
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+40,myY+40,10,10);
    }
    if (digit == 3) {
      fill(255,0,0);
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+40,myY+40,10,10);  
    }
    if (digit == 4) {
      fill(204,0,0);
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+10,myY+40,10,10);
      ellipse(myX+40,myY+10,10,10);
      ellipse(myX+40,myY+40,10,10);  
    }
    if (digit == 5) {
      fill(255,80,80);
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+10,myY+40,10,10);
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+40,myY+10,10,10);
      ellipse(myX+40,myY+40,10,10);  
    }
    if (digit == 6) {
      fill(204,0,102);
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+10,myY+25,10,10);
      ellipse(myX+10,myY+40,10,10);
      ellipse(myX+40,myY+10,10,10);
      ellipse(myX+40,myY+25,10,10);
      ellipse(myX+40,myY+40,10,10);  
    }
  }
}

//I'm gonna be real honest I procrastinated pretty hard on this. I had a bit of trouble trying to comprehend how to do the objects and such.
//So finally figuring it out felt so relieving and proud. Just thought I'd share that with you. :)
//I also was thinking of making TF2 themed Dice but you can't really have a basic die having 9 different faces on it, so oh well, maybe next time.
//Garrett Yu
