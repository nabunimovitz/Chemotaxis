 Bacteria [] colony;
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
 			myX = myX+(int)(Math.random()*10)-6;
 		else
 			myX = myX+(int)(Math.random()*10)+6;

 		if(mouseY < myY)
 			myY = myY+(int)(Math.random()*10)-6;
 		else
 			myY = myY+(int)(Math.random()*10)+6;
 		//add if mouseX= mouse Y ?
 	}

 	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,10,10);
 	}
 }    