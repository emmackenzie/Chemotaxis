Bacteria bob;

 void setup()   
 {     
 	size(500,500);
 	ellipse(250,250,500,500);
 	bob = new Bacteria();  
 } 

 void draw()   
 {    
 	bob.show();
 	bob.move(); 
 }  

 class Bacteria    
 {     

 	int myX, myY, myXTwo, myYTwo;
 	int bColor;
 	Bacteria()
 	{
 		myX = 250;
 		myY = 250;
 		myXTwo = 250;
 		myYTwo = 250;
 		bColor = color(255,0,0);
 	}

 	void move()
 	{
		myX = myX + (int)(Math.random()*9)-4;
 		myY = myY + (int)(Math.random()*9)-4;
 		myXTwo = myX + (int)(Math.random()*9)-4;
 		myYTwo = myY + (int)(Math.random()*9)-4;
 	}  

 	void show()
 	{
 		stroke(bColor);
 		line(myX, myY, myXTwo,myYTwo);
 	} 
 }    