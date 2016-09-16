
Bacteria [] colony;


 void setup()   
 {    
 	
 	size(600,600);

 	frameRate(10);
 	colony = new Bacteria[100];
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

 		/*if (myX > 600  myY < 600)
 		{
 			myX = myX + (int)(Math.random()*9)- 18;
 			myY = myY + (int)(Math.random()*9) - 18;
 		}*/

 	}  

 	void show()
 	{
 		fill(bColor);
 		ellipse(myX, myY, 10,10);
 	} 

 	void hide()
 	{
 		background(255);
 		myX = 300;
 		myY = 300;
 	}
 }

 void mousePressed()
 {
 	
 }    