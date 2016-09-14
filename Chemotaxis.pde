Bacteria bob = new Bacteria(250, 250);
void setup()   
 {     
 	//initialize bacteria variables here 
 	size(500, 500); 
 }   
void draw()   
 {    
 	//move and show the bacteria
 	background(255);
 	bob.show();
 	bob.move();   
 }  
 class Bacteria    
 {     
 	int myX, myY;
 	Bacteria(int x, int y) {
 		myX = x;
 		myY = y;
 	}
 	void move() {
 		myX = myX + (int)(Math.random()*7)-3;
 		myY = myY + (int)(Math.random()*7)-3;
 	}
 	void show() {
 		ellipse(myX, myY, 10, 10);
 	}
 }    