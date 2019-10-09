void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	//your code here

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int x, y;
	int diceNumber;
	Die(int x, int y) //constructor
	{
  		//variable initializations here
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
  		rect(50, 50, 55, 55, 10, 10, 10, 10);

  		if(random == 1){

  		}
	}
}
	