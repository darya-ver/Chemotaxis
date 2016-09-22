Bacteria [] colony;
int numOfThings = 100;
int numberOfThingsOutOfScreen = 0;

int scoreCounter = 0;
int highScore = 1000;

 void setup()   
 {     
 	size(600,600);
 	background(155);

 	colony = new Bacteria[numOfThings];

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
 	text(numberOfThingsOutOfScreen, 250, 400);
 	text(scoreCounter, 100, 100);
 	text ("fastest time: "+ highScore, 100, 200);

 	if (numberOfThingsOutOfScreen == 100){
 		if (scoreCounter < highScore){
 			highScore = scoreCounter;

 			
 		}
 		scoreCounter = 0;

 		for(int i=0; i<colony.length; i++){
	 		colony[i].restart();
	 	}
 	}

 	scoreCounter +=1;
 	
 }  

// void mousePressed(){
// 	for(int i=0; i<colony.length; i++){
//  		colony[i].restart();
//  	}
//  	scoreCounter = 0;
// }

 class Bacteria {

 	int myX, myY;
 	int myR, myG, myB;
 	boolean onScreen;


 	Bacteria(){
 		myX = (int)(Math.random()*500);
 		myY = (int)(Math.random()*500);

 		myR = (int)(Math.random()*255);
 		myG = (int)(Math.random()*255);
 		myB = (int)(Math.random()*255);

 		onScreen = true;
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
		if ((onScreen==true)&&(myX <= 0 || myX >= 600)&&(myY <= 0||myY >= 600)){
			numberOfThingsOutOfScreen += 1;
			onScreen = false;
		}
		if (numberOfThingsOutOfScreen >= 100){
			text("omg", 500,500);
		}
 	}

 	void show(){
 		fill(myR,myG,myB);
 		ellipse(myX, myY, 20, 20);
 	}

 	void restart(){
 		onScreen = true;
 		numberOfThingsOutOfScreen = 0;
 		myX = (int)(Math.random()*500);
 		myY = (int)(Math.random()*500);
 	}
 }    