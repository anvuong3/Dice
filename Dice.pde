Die dice;

void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	//your code here
	dice = new Die(55,55);
	dice.show();
}
void mousePressed()
{
	redraw();
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
  		diceNumber = (int) (Math.random()*7 + 1);
	}
	void roll()
	{
		//your code here
		random = (int) random(1, 6);
	}
	void show()
	{
		//your code here
		strokeWeight(2);
  		fill(#FFF3D6);
  		rect(60, 60, myx, myy, 10, 10, 10, 10);

  		if(random == 1){
  			ellipse(myx, myy, );
  		}else if(random == 2){
  			ellipse();
  			ellipse();
  		}else if(random == 3){
  			ellipse();
  			ellipse();
  			ellipse();
  		}else if(random == 4){
  			ellipse();
  			ellipse();
  			ellipse();
  			ellipse();
  		}else if(random == 5){
  			ellispse();
  			ellipse();
  			ellipse();
  			ellipse();
  			ellipse();
  		}else if (random = 6){
  			ellispe();
  			ellipse();
  			ellipse();
  			ellipse();
  			ellipse();
  			ellipse();
  		}
	}
}
	