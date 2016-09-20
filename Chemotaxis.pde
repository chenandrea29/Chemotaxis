Bacteria [] colony = new Bacteria[50];

void setup()   
 {     
 	//initialize bacteria variables here
 	background(0);
 	size(500, 500); 
 	frameRate(30);
 	for (int i = 0; i < colony.length; i++) {
 		colony[i] = new Bacteria((int)(Math.random()*301)+100, (int)(Math.random()*301)+100, color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256)));
 	}
 }   
void draw()   
 {    
 	//move and show the bacteria
 	fill(0, 0, 0, 10);
 	rect(0, 0, 500, 500);
 	for (int i = 0; i < colony.length; i++) {
 		colony[i].show();
 		colony[i].move();
 	}
 }  
 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria(int x, int y, int rgb) {
 		myX = x;
 		myY = y;
 		myColor = rgb;
 	}
 	void move() {
 		myX = myX + (int)(Math.random()*5)-2;
 		myY = myY + (int)(Math.random()*5)-2;
 	}
 	void show() {
			stroke(myColor);
	 		strokeWeight(3);
	 		ellipse(myX, myY, 10, 10);
 	}    
}