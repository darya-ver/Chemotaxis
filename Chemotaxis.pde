Bacteria [] colony;

int numTouches = 0;
 void setup()   
 {     
 	size(600,600);
 	background(155);

 	colony = new Bacteria[15];

 	for (int i=0; i<colony.length; i++){
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	background(155);

 	for(int i=0; i<colony.length; i++){
 		colony[i].show();
 		colony[i].move();
 		
 	}

 	textSize(40);
 	text(numTouches, 250, 400);

 	
 }  
 class Bacteria {

 	int myX, myY;
 	int myR, myG, myB;

 	Bacteria(){
 		myX = (int)(Math.random()*500);
 		myY = (int)(Math.random()*500);

 		myR = (int)(Math.random()*255);
 		myG = (int)(Math.random()*255);
 		myB = (int)(Math.random()*255);
 	}

 	void move() {

 		if (mouseX < myX){
 			myX += (int)(Math.random()*5)-1;
 		}

 		if (mouseX > myX){
 			myX += (int)(Math.random()*5)-3;
 		}
 		if (mouseX == myX){
 			myX += (int)(Math.random()*5)-2;
 		}
 		if (mouseY > myY) {
 			myY += (int)(Math.random()*5)-3;
 		}
 		if (mouseY < myY) {
 			myY += (int)(Math.random()*5)-1;
 		}
 		if (mouseY == myX){
 			myY += (int)(Math.random()*5)-2;
 		}
 		if (mouseY==myY && mouseX==myX){
 			numTouches += 1;
 		}
 	}

 	void show(){
 		fill(myR,myG,myB);
 		ellipse(myX, myY, 20, 20);
 	}
 }    