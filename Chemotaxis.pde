
Bacteria [] colony;

 void setup()   
 {    
 	
 	size(600,600);

 	frameRate(10);
 	colony = new Bacteria[1000];
 		for (int i = 0; i < colony.length; i ++) {
 			colony[i]= new Bacteria();
 		}


 } 

 void draw()   
 {  

 	background(255);

	 for (int i = 0; i < colony.length; i ++){
		colony[i].show();
	 	colony[i].move(); 
	 }


 }  

 class Bacteria    
 {     
 	int myX, myY;
 	int bColor;
 	Bacteria()
 	{
 		myX = 300;
 		myY = 300;
 		
 		bColor = color(0,(int)(Math.random()*255),0);
 	}

 	void move()
 	{
		myX = myX + (int)(Math.random()*9)-4;
 		myY = myY + (int)(Math.random()*9)-4;

 		/*if (myX == mouseX && myY == mouseY)
 		{
 			myX = myX + (int)(Math.random()*5) + 6;
 			myY = myY + (int)(Math.random()*5) + 6;
 		}
 		else 
 		{
 			myX = myX + (int)(Math.random()*9)-4;
 			myY = myY + (int)(Math.random()*9)-4;
		}*/

 	}  

 	void show()
 	{
 		fill(bColor);
 		ellipse(myX, myY, 10,10);
 	} 

 	
 }

 void mousePressed()
 {
 	
 }    