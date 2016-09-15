int r, g, b;
Bacteria [] colony = new Bacteria[10];

void setup()   
 {     
 	//initialize bacteria variables here 
 	size(500, 500); 
 	for (int i = 0; i < colony.length; i++) {
 		colony[i] = new Bacteria(250, 250);
 	}
 }   
void draw()   
 {    
 	//move and show the bacteria
 	background(255);
 	for (int i = 0; i < colony.length; i++) {
 		r = (int)(Math.random()*256);
		g = (int)(Math.random()*256);
		b = (int)(Math.random()*256);
		fill(r, g, b);
 		colony[i].show();
 		colony[i].move();
 	}
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