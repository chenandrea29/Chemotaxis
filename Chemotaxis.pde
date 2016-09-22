Bacteria [] colony = new Bacteria[50];

void setup()   
 {     
 	//initialize bacteria variables here
 	size(500, 500); 
 	frameRate(30);
 	for (int i = 0; i < colony.length; i++) {
 		colony[i] = new Bacteria(((int)(Math.random()*501)), ((int)(Math.random()*501)), color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256)));
 	}
 }   
void draw()   
 {    
 	//move and show the bacteria
 	background(0);
 	for (int i = 0; i < colony.length; i++) {
 		colony[i].show();
 		colony[i].move();
 	}
 	food();
 }  

 void food() {
 	noFill();
 	stroke(255);
 	ellipse(mouseX, mouseY, 40, 40);
 }

 class Bacteria    
 {     
 	int myX, myY, myColor;
 	boolean chaseFood;
 	Bacteria(int x, int y, int rgb) {
 		myX = x;
 		myY = y;
 		myColor = rgb;
 		chaseFood = true;
 	}
 	void move() {
 		if (chaseFood == true) {
	 		if (myX <= mouseX) {
	 			myX += (int)(Math.random()*6)-2;
	 		}
	 		else if (myX > mouseX) {
	 			myX += (int)(Math.random()*6)-3;
	 		}
	 		if (myY <= mouseY) {
	 			myY += (int)(Math.random()*6)-2;
	 		}
	 		else if (myY > mouseY) {
	 			myY += (int)(Math.random()*6)-3;
	 		}
	 	}
	 	else {
	 		if (myX <= mouseX) {
	 			myX += (int)(Math.random()*6)-3;
	 		}
	 		else if (myX > mouseX) {
	 			myX += (int)(Math.random()*6)-2;
	 		}
	 		if (myY <= mouseY) {
	 			myY += (int)(Math.random()*6)-3;
	 		}
	 		else if (myY > mouseY) {
	 			myY += (int)(Math.random()*6)-2;
	 		}
	 	}
	 	if (mousePressed == true) {
	 		chaseFood = !chaseFood;
	 	}
 	}
 	void show() {
			stroke(myColor);
	 		strokeWeight(3);
	 		noFill();
	 		ellipse(myX, myY, 10, 10);
 	}    
}