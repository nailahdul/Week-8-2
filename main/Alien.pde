class Alien {
  float alienx;
  float alieny;
  float xDirection = 8;
  float yDirection = 6;
  float size;
  PImage alien;

  Alien(float x, float y, float tempSize) {
    alienx = x;
    alieny = y;
    size = tempSize;
  }

  void display() {
    alien = loadImage("alien.png");
    
    image(alien,alienx,alieny,80,80);
   
    alienx += xDirection;
    alieny += yDirection;
    
    if(alienx > width|| alienx <0){
      xDirection = - xDirection;
    }
    if(alieny > height || alieny <0){
      yDirection = - yDirection;
    
  }
}
}