Bacteria [] colony;

 void setup()   
 {     
 	size(600,600);
 	background(155);

 	colony = new Bacteria[8];
 	for (int i=0; i<colony.length; i++){
 		colony[i]= new Bacteria;
 }   
 void draw()   
 {    
 	background(155);

 	for(int i=0; i<colony.length; i++){
 		colony[i].move();
 		colony[i].show();
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
 		myX += (int)(Math.random()*3)-1;
 		myY += (int)(Math.random()*3)-1;
 	}

 	void show(){
 		fill(255,0,0);
 		ellipse(myX, myY, 5, 5);
 	}
 }    