Die bob;// = new Die(150,150);

void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  background(200);
  int i = 1;
  while (i < 9) {
   bob = new Die(50*i,50*i);
   bob.show();
   i++;
  }
}

void mousePressed() {
  redraw();
}

class Die //models one single dice cube
{
  int AddUp = 0;
  int myX, myY;
  int digit = ((int)(Math.random()*5)+1);
  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  
  void roll()
  {
    if (digit == 1) {
      
      }
    else  if (digit == 2) {
      
      }
    else  if (digit == 3) {
      
      }
    else  if (digit == 4) {
      
      }
    else  if (digit == 5) {
      
      }
    else  if (digit == 6) {
      
      }  
  }
      
  void show()
  {
    fill(255);
    rect(myX,myY,50,50);
    if (digit == 1) {
      fill(0);
      ellipse(75,75,10,10);
    }
    if (digit == 2) {
      fill(0);
      ellipse(60,60,10,10);
      ellipse(90,90,10,10);
    }
    if (digit == 3) {
      fill(0);
      ellipse(60,90,10,10);
      ellipse(75,75,10,10);
      ellipse(90,60,10,10);  
    }
    if (digit == 4) {
      fill(0);
      ellipse(60,60,10,10);
      ellipse(60,90,10,10);
      ellipse(90,60,10,10);
      ellipse(90,90,10,10);  
    }
    if (digit == 5) {
      fill(0);
      ellipse(60,60,10,10);
      ellipse(60,90,10,10);
      ellipse(75,75,10,10);
      ellipse(90,60,10,10);
      ellipse(90,90,10,10);  
    }
    if (digit == 6) {
      fill(0);
      ellipse(60,60,10,10);
      ellipse(60,75,10,10);
      ellipse(60,90,10,10);
      ellipse(90,60,10,10);
      ellipse(90,75,10,10);
      ellipse(90,90,10,10);  
    }
  }
}
