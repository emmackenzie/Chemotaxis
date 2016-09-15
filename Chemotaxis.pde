Bacteria [] colony;

 void setup()   
 {     
 	size(500,500);
 	//ellipse(250,250,500,500);
 	frameRate(10);
 	//bob = new Bacteria(); 
 	colony = new Bacteria[10];
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

 	int myX, myY, myXTwo, myYTwo;
 	int bColor;
 	Bacteria()
 	{
 		myX = 250;
 		myY = 250;
 		//myXTwo = 250;
 		//myYTwo = 250;
 		bColor = color(0,(int)(Math.random()*255),0);
 	}

 	void move()
 	{
		myX = myX + (int)(Math.random()*9)-4;
 		myY = myY + (int)(Math.random()*9)-4;
 		//myXTwo = myX + (int)(Math.random()*9)-4;
 		//myYTwo = myY + (int)(Math.random()*9)-4;
 	}  

 	void show()
 	{
 		fill(bColor);
 		ellipse(myX, myY, 10,10);
 	} 
 }    