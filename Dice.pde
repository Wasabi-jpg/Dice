void setup()
{
	size(500,300);
	textAlign(CENTER);
	noLoop();
}
void draw()
{
	Die bob = new Die (250,150);
	bob.show();

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;

	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		noStroke();
		fill(0);
		rect(myX-25, myY-25, 50, 50);
		if(1==1){
			noStroke();
			fill(255);
			ellipse(myX,myY, 10,10);
		}






	}
}
