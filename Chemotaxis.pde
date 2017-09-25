 //declare bacteria variables here 
 Bacteria [] colony;
 void setup()   
 {     
 	size(500,500);
 	//initialize bacteria variables here   
 	colony = new Bacteria[200];
 	for(int i=0; i<colony.length; i++)
 	{
 		colony[i] = new Bacteria(250,250);
 	}
 }   
 void draw()   
 {    
 	background(0);
 	//move and show the bacteria   

 	for(int i=0; i<colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}

 }  
 class Bacteria    
 {     
 	//lots of java! 
 	int myX, myY, myColor;
 	Bacteria(int x, int y) //constructor 
 	{
 		myX=x;
 		myY=y;
 		myColor=color(127,255,212);
 	} 

 	void move()
 	{
 		if(mouseX < myX && mouseY < myY) //fix this!
 		{
 			myX = myX+(int)(Math.random()*5)-2;
 			myY = myY+(int)(Math.random()*5)-2;
 		}
 			
 		else
 		{
 			myX = myX+(int)(Math.random()*5)+2;
 			myY = myY+(int)(Math.random()*5)+2;	
 		}
 	}

 	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,10,10);
 	}
 }    