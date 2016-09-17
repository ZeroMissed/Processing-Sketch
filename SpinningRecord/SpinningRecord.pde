int acceleration;
PImage pictureOfRecord; 
PImage halloween; 
import ddf.minim.*;
Minim minim;
AudioPlayer spooky;
AudioPlayer thriller;
AudioPlayer ghost;
AudioPlayer chosen;
Button Spooky = new Button(20, 8, 25, "Spooky Skeletons");
Button Thriller = new Button(20, 60, 125, "Thriller");
Button Ghost = new Button(20, 30, 75, "Ghost Busters");

void setup() {
  minim = new Minim(this);
  spooky = minim.loadFile("SpookySkeletons.mp3", 512);
  thriller = minim.loadFile("Thriller.mp3", 512);
  ghost = minim.loadFile("Ghostbusters.mp3", 512);
  size(225, 225);
  //as member variable
  pictureOfRecord = loadImage("imgres.jpg"); //in setup method
  halloween = loadImage("halloween.jpg");
  halloween.resize(225, 225);
  background(255);
}
void draw() {
  if (!(chosen == null)) {
    background(255);
    if (mousePressed) {
      chosen.play();
      acceleration++;
    } else 
    chosen.pause();
    rotateImage(pictureOfRecord, acceleration);

    image(pictureOfRecord, 0, 0);//in draw
  } else {
    background(halloween);
    Spooky.setVisible(true); 
    Thriller.setVisible(true); 
    Ghost.setVisible(true);
  }
}

void rotateImage(PImage image, int amountToRotate) {
  translate(width/2, height/2);
  rotate(amountToRotate*TWO_PI/360);                              
  translate(-image.width/2, -image.height/2);
}

void buttonActionPerformed(String buttonText) {
  if (buttonText.equalsIgnoreCase("Ghost Busters")) 
    chosen = ghost;
  if (buttonText.equalsIgnoreCase("Thriller"))
    chosen = thriller;
  if (buttonText.equalsIgnoreCase("Spooky Skeletons"))
    chosen = spooky;
}