
void setup()
{
	size(500,500);
	textAlign(CENTER);
	noLoop();
	
}
void draw()
{
	fill(77,0,0);
	rect(0,0,500,500);
	int totalSum = 0;
	
	for(int y=150;y<=350;y+=100){
		for(int x=150;x<=350;x+=100){
			Die one = new Die(x,y);
			one.show();
			totalSum += one.roll;
		}
	}
	text("Total Dots: " + totalSum, 250,450);

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
