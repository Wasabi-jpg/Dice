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
	int myX, myY,roll;

	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll=0;
		//variable initializations here
	}
	void roll()
	{
		//your code here

		roll = (int)(Math.random*2)+1;

	}
	void show()
	{
		noStroke();
		fill(0);
		rect(myX-25, myY-25, 50, 50);
		if(roll==1){
			noStroke();
			fill(255);
			ellipse(myX,myY, 10,10);
		}
		if(roll==2){
			noStroke();
			fill(255);
			ellipse(myX-12.5,myY-12.5, 10,10);
			ellipse(myX+12.5,myY+12.5,10,10);
		}
		//if((int)(Math.random()*2)==1){
			//noStroke();
			//fill(255);
			//ellipse(myX,myY, 10,10);
		//}
		//if((int)(Math.random()*2)==1){
			//noStroke();
			//fill(255);
			//ellipse(myX,myY, 10,10);
		//}
		//if((int)(Math.random()*2)==1){
			//noStroke();
			//fill(255);
			//ellipse(myX,myY, 10,10);
		//}
		//if((int)(Math.random()*2)==1){
			//noStroke();
			//fill(255);
			//ellipse(myX,myY, 10,10);
		//}






	}
}
