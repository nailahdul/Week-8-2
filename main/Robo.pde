class Robot {
  float x;
  float y;
  float size;
  PImage body, left, right;

  Robot(float x, float y, float tempSize) {
    x = width;
    y = height;
    size = tempSize;
  }

  void leftMove() {
    x+=3;
  }

  void rightMove() {
    x-=3;
  }

  void display () {
    fill(0);
    stroke(255);
    strokeWeight(8);
    ellipse (x+215, y+432, 77, 17); 
    strokeWeight(6);
    ellipse (x+215, y+453, 52, 17);
    strokeWeight(4);
    ellipse (x+215, y+476, 32, 17); 

    left = loadImage("left.png");
    body = loadImage("body.png");
    right = loadImage("right.png");

    image (left, x+125, y+360, 70, 70);
    image (body, x+167, y+319, 100, 100);
    image (right, x+244, y+360, 70, 70);

    noStroke();
    fill (random (0, 255), random (0, 255), random (0, 255));
    ellipse (x+198, y+372, 43, 56);
  }
}