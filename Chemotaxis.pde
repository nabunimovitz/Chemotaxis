 Bacteria [] colony;
 boolean isAlive = true;
 void setup()   
 {     
 	size(500,500);   
 	colony = new Bacteria[200];
 	for(int i=0; i<colony.length; i++)
 	{
 		colony[i] = new Bacteria(250,250);
 	}
 }   
 void draw()   
 {    
 	background(0);
 	for(int i=0; i<colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}

 } 
 void mousePressed()
 {
 	for(int i=0; i<colony.length; i++)
 		colony[i].jump();

 	isAlive = !isAlive;
 }

 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria(int x, int y) //constructor 
 	{
 		myX=x;
 		myY=y;

 		int red = (int)(Math.random()*256);
 		int green = (int)(Math.random()*256);
 		int blue = (int)(Math.random()*256);

 		myColor= color(red,green,blue);
 	} 

 	void move()
 	{
 		if(mouseX < myX)
 			myX = myX+(int)(Math.random()*3)-2;
 		else
 			myX = myX+(int)(Math.random()*3)+2;

 		if(mouseY < myY)
 			myY = myY+(int)(Math.random()*3)-2;
 		else
 			myY = myY+(int)(Math.random()*3)+2;
 	}

 	void jump()
 	{
 		myX = (int)(Math.random()*500);
 		myY = (int)(Math.random()*500);
 		//myColor = (255);
 	}

 	void show()
 	{
 		if(isAlive==true)
 			fill(myColor);
 		else  
 			fill(255);
 		ellipse(myX,myY,10,10);
 	}
 }    