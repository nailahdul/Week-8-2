Robot robot1;
Stars star1;
PImage star;
PImage left, right, body;

void setup() {
  size(500, 500);
  left = loadImage("left.png");
  body = loadImage("body.png");
  right = loadImage("right.png");
  star = loadImage("star.png");
  robot1 = new Robot (width/2, height/2, 100);
  star1 = new Stars (star, 70, 3 );
}

void draw () {
  background(0);
  robot1.display();
  star1.rain();
  if (key == 's') {
    robot1.leftMove();
  } else if (key== 'a') {
    robot1.rightMove();
  }
}