int startX = 200;
int startY = 0;
int endX = 200;
int endY = 0;


void setup()
{
	strokeWeight(5);
	background(25, 0, 21);
  	size(400,400);
}
void draw()
{
	land();
	house();
	stroke((int)(Math.random()*250),(int)(Math.random()*250), (int)(Math.random()*250));
	while (endX <400)
	{
		endY = startY + ((int)(Math.random()*9));
		endX = startX +(int)(Math.random()*19-10);
		line(startX, startY, endX, endY);
		startX=endX;
		startY=endY;
	}
}

void land()
{
	rect(0, 390, 400, 390);
}

void house()
{
	rect(60, 350, 80, 350);
	rect(100, 300, 60, 300);
	rect(150, 350, 20, 350);
	rect(200, 370, 50, 350);
	rect(170, 350, 40, 350);
	triangle(120, 0, 150, 0,200, 0);
}
void mousePressed()
{
	startX = 200;
 	startY = 0;
 	endX = 200;
 	endY = 0;
}

