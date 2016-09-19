int r, g, b;
Bacteria [] colony = new Bacteria[50];

void setup()   
 {     
 	//initialize bacteria variables here
 	background(0);
 	size(500, 500); 
 	frameRate(30);
 	for (int i = 0; i < colony.length; i++) {
 		colony[i] = new Bacteria((int)(Math.random()*501), (int)(Math.random()*501));
 		r = (int)(Math.random()*256);
		g = (int)(Math.random()*256);
		b = (int)(Math.random()*256);
 	}
 }   
void draw()   
 {    
 	//move and show the bacteria
 	fill(0, 0, 0, 10);
 	rect(0, 0, 500, 500);
 	for (int i = 0; i < colony.length; i++) {
 		stroke(r, g, b);
 		strokeWeight(3);
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