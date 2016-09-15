Bacteria [] colony;

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

 	
 }  
 class Bacteria    
 {     
 	int myX, myY;

 	Bacteria(){
 		myX = (int)(Math.random()*500);
 		myY = (int)(Math.random()*500);
 	}

 	void move(){

 		if (mouseX > myX){
 			myX += (int)(Math.random()*5)-1;
 			// myY += (int)(Math.random()*5)-2;
 		}

 		if (mouseX < myX){
 			myX += (int)(Math.random()*5)-3;
 			// myY += (int)(Math.random()*5)-2;
 		}
 		if (mouseY < myY) {
 			myY += (int)(Math.random()*5)-3;
 		}
 		if (mouseY > myY) {
 			myY += (int)(Math.random()*5)-1;
 		}
 		
 	}

 	void show(){
 		fill(255,0,0);
 		ellipse(myX, myY, 20, 20);
 	}
 }    