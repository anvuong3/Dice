Die dice;
int sum = 0;

void setup()
{
  size(500,500);
  noLoop();

}
void draw()
{

  for ( int x = 15; x < 450; x = x+60 ) {
    for ( int y = 15; y < 450; y = y+60 ) {
      Die dice = new Die(x, y);
      dice.show();
    }
  }
    textSize(15);
  text("Sum of Dice: " + sum, 250, 50);
}
void mousePressed()
{
  sum = 0;
  redraw();
  background(192);
}
class Die //models one single dice cube
{
  //variable declarations here
  int myx, myy;
  int diceNumber;
  int random;
  Die(int x, int y) //constructor
  {
      //variable initializations here
      myx = x;
      myy = y;
      roll();

  }
  void roll()
  {
    //your code here
    random = (int) random(1, 7);
  
  }
  void show()
  {
    //your code here
      textSize(15);
  text("Sum of Dice: " + sum, 250, 50);
    background(255);


    strokeWeight(2);
      fill(random(0,255),random(0,255),random(0,255));
      rect(myx-35, myy-35, 70, 70, 10, 10, 10, 10);

      if(random == 1){
                fill((float)Math.random()*256,(float)Math.random()*256,(float)Math.random()*256);
        ellipse(myx, myy, 10, 10);
        sum+= 1;
      }else if(random == 2){
                fill((float)Math.random()*256,(float)Math.random()*256,(float)Math.random()*256);
        ellipse(myx-15,myy-15, 10, 10);
        ellipse(myx+15, myy+15, 10, 10);
                sum+= 2;
      }else if(random == 3){
                fill((float)Math.random()*256,(float)Math.random()*256,(float)Math.random()*256);
  			ellipse(myx,myy, 10, 10);
  			ellipse(myx - 20, myy - 20, 10, 10);
  			ellipse(myx + 20, myy + 20, 10, 10);
                sum+= 3;
  		}else if(random == 4){
                fill((float)Math.random()*256,(float)Math.random()*256,(float)Math.random()*256);
        ellipse(myx-15,myy-15, 10, 10);
        ellipse(myx+15,myy+15, 10, 10);
        ellipse(myx-15,myy+15, 10, 10);
        ellipse(myx+15,myy-15, 10, 10);
                sum+= 4;

  		}else if(random == 5){
                        sum+= 5;
        fill((float)Math.random()*256,(float)Math.random()*256,(float)Math.random()*256);
  			ellipse(myx - 20, myy - 20, 10, 10);
  			ellipse(myx + 20, myy + 20, 10, 10);
  			ellipse(myx - 20, myy + 20, 10, 10);
  			ellipse(myx + 20, myy - 20, 10, 10);
  			ellipse(myx, myy, 10, 10);

  		}else{
                        sum+= 6;
        fill((float)Math.random()*256,(float)Math.random()*256,(float)Math.random()*256);
        ellipse(myx-15,myy-17, 10, 10);
        ellipse(myx+15,myy+17, 10, 10);
        ellipse(myx-15,myy+17, 10, 10);
        ellipse(myx+15,myy-17, 10, 10);
        ellipse(myx-15,myy, 10, 10);
        ellipse(myx+15,myy, 10, 10);

  		}
	}
}
	