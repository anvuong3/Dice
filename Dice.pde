int sum = 0;

void setup()
{
  size(975,1015);
  noLoop();

}
void draw()
{
    background(0);
  for ( int x = 15; x < 960; x = x+60 ) {
    for ( int y = 50; y < 960; y = y+60 ) {
      Die Eins = new Die(x, y);
      Eins.show();
    }
  }
  fill(255);
        textSize(40);
        strokeWeight(2);

  text("Sum of Dice: " + sum, 330, 40);
}

void mousePressed()
{

  sum = 0;
  redraw();
}


  class Die
{
  int rollNum;
  int myX, myY;
  Die(int X, int Y)
  {
    roll();
    myX = X;
    myY = Y;
  }
  void roll()
  {
    float r = random(6);

    if ( r < 1 ) {
      rollNum = 1;
    } else if ( r < 2 ) {
      rollNum = 2;
    } else if ( r < 3 ) {
      rollNum = 3;
    } else if ( r < 4 ) {
      rollNum = 4;
    } else if ( r < 5 ) {
      rollNum = 5;
    } else if ( r < 6 ) {
      rollNum = 6;
    }
  }
  void show()
  {
    fill((float)random(0,255),(float)random(0,255),(float)random(0,255));
    strokeWeight(2);
    stroke(255);
    rect(myX, myY, 50, 50,10,10,10,10);

    fill(0);
    if ( rollNum == 1) {
          fill((float)random(0,255),(float)random(0,255),(float)random(0,255));
      ellipse(myX + 25, myY + 25, 5, 5);
      sum+=1;
    } else if ( rollNum == 2) {
          fill((float)random(0,255),(float)random(0,255),(float)random(0,255));
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      sum+=2;
    } else if ( rollNum == 3) {
          fill((float)random(0,255),(float)random(0,255),(float)random(0,255));
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 25, myY + 25, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      sum+=3;
    } else if ( rollNum == 4) {
          fill((float)random(0,255),(float)random(0,255),(float)random(0,255));
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 10, 5, 5);
      ellipse(myX + 10, myY + 40, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      sum+=4;
    } else if ( rollNum == 5) {
          fill((float)random(0,255),(float)random(0,255),(float)random(0,255));
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 10, 5, 5);
      ellipse(myX + 10, myY + 40, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      ellipse(myX + 25, myY + 25, 5, 5);
      sum+=5;
    } else if (rollNum == 6) {
          fill((float)random(0,255),(float)random(0,255),(float)random(0,255));
      ellipse(myX + 15, myY + 12, 5, 5);
      ellipse(myX + 15, myY + 25, 5, 5);
      ellipse(myX + 15, myY + 37, 5, 5);
      ellipse(myX + 38, myY + 12, 5, 5);
      ellipse(myX + 38, myY + 25, 5, 5);
      ellipse(myX + 38, myY + 37, 5, 5);
      sum+=6;
    }
  }
}

	