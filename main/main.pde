Robot robot1;
Stars star1;
Alien alien1;
PImage star;
PImage alien;
PImage left, right, body;

void setup() {
  size(500, 500);
  left = loadImage("left.png");
  body = loadImage("body.png");
  right = loadImage("right.png");
  star = loadImage("star.png");
  alien = loadImage("alien.png");
  robot1 = new Robot (width/2, height/2, 100);
  star1 = new Stars (star, 70, 3 );
  alien1 = new Alien (width/2, height/2, 100 );
}

void draw () {
  background(0);
  robot1.display();
  star1.rain();
  alien1.display();
  if (key == 's') {
    robot1.leftMove();
  } else if (key== 'a') {
    robot1.rightMove();
  }
}