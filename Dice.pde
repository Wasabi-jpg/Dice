//int dotSum = 
void setup()
{
	size(500,500);
	textAlign(CENTER);
	noLoop();
	background(77,0,0);
}
void draw()
{
	
	Die one = new Die (150,150);
	Die two = new Die (250,150);
	Die three = new Die (350,150);
	Die four = new Die (150,250);
	Die five = new Die (250,250);
	Die six = new Die (350,250);
	Die seven = new Die (150,350);
	Die eight = new Die (250,350);
	Die nine = new Die (350,350);
	one.show();
	two.show();
	three.show();
	four.show();
	five.show();
	six.show();
	seven.show();
	eight.show();
	nine.show();

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, roll;

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

		roll = (int)(Math.random()*6)+1;

	}
	void show()
	{
		noStroke();
		fill(0);
		rect(myX-25, myY-25, 50, 50);
		roll();
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
		if(roll==3){
			noStroke();
			fill(255);
			ellipse(myX,myY, 10,10);
			ellipse(myX-12.5,myY-12.5, 10,10);
			ellipse(myX+12.5,myY+12.5,10,10);
		}
		if(roll==4){
			noStroke();
			fill(255);
			ellipse(myX-12.5,myY-12.5, 10,10);
			ellipse(myX+12.5,myY+12.5,10,10);
			ellipse(myX-12.5,myY+12.5, 10,10);
			ellipse(myX+12.5,myY-12.5,10,10);
		}
		if(roll==5){
			noStroke();
			fill(255);
			ellipse(myX,myY, 10,10);
			ellipse(myX-12.5,myY-12.5, 10,10);
			ellipse(myX+12.5,myY+12.5,10,10);
			ellipse(myX-12.5,myY+12.5, 10,10);
			ellipse(myX+12.5,myY-12.5,10,10);
		}
		if(roll==6){
			noStroke();
			fill(255);
			ellipse(myX-12.5,myY-12.5, 10,10);
			ellipse(myX+12.5,myY+12.5,10,10);
			ellipse(myX-12.5,myY+12.5, 10,10);
			ellipse(myX+12.5,myY-12.5,10,10);
			ellipse(myX-12.5,myY, 10,10);
			ellipse(myX+12.5,myY, 10,10);

		}






	}
}
