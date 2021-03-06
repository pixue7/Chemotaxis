  class Bacteria{
  int myX;
  float myY;
  float mySpeed;
  int mySize;
  int myColor;

  Bacteria(){
  myX = 0;
  myY = (int)(Math.random()*400);
  mySpeed = mySize/30.0;
  mySize = (int)(Math.random()*50 + 20);
  myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void rise(){
    myX = myX + (int)(Math.random()*6)-1;
    myY = myY + (int)(Math.random()*3)-1;
    if(myY < -100){
    myY = 500;
    }
  }
  void show(){
  fill(myColor, 25);
  noStroke();
  ellipse(myY, myX, mySize, mySize);
  }
}


Bacteria[] die = new Bacteria[4];

void setup(){
  size(400, 400);
  background(255);
  for(int i = 0; i < die.length; i++){
    die[i] = new Bacteria();
  }
}
void draw(){
  for(int i = 0; i < die.length; i++){
  die[i].show();
  die[i].rise();
  }
}
