int acceleration;
PImage pictureOfRecord; 
import ddf.minim.*;
Minim minim;
AudioPlayer song;
void setup() {
  minim = new Minim(this);
 song = minim.loadFile("GET HYPER.mp3", 512); 
  size(225, 225);
  //as member variable
  pictureOfRecord= loadImage("imgres.jpg");   //in setup method  
  background(255, 255, 255);
  
}
void draw() {
  if(mousePressed) {
  song.play();
  acceleration++;
  }
  else 
  song.pause();
 rotateImage(pictureOfRecord, acceleration);
  
  image(pictureOfRecord, 0, 0);//in draw
  
}

void rotateImage(PImage image, int amountToRotate) {
      translate(width/2, height/2);
      rotate(amountToRotate*TWO_PI/360);                              
      translate(-image.width/2, -image.height/2);
}

