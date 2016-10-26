class Stars {
  float x;
  float y; 
  float xStart;
  float yStart;
  int xImg;
  int speed;
  PImage star; 

  Stars(PImage tempImg, int tempxImg,int tempSpeed) {
    x = width;
    y = height;
    xImg = tempxImg;
    
    speed = tempSpeed;
    star = tempImg;
    xStart = random(x);
    yStart = random(-100, -50);
  }

  void rain() {
    //background(0);
    if (xStart < x) {
      image(star, xStart, yStart,xImg, xImg );
    } 
    if ( yStart > y) {
      
      xStart = random(x);
      yStart = random(-100, -50);
    } 
    
    yStart+=speed;
  }
}