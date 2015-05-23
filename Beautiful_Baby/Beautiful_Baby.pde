void setup () { 
  size(240, 400);
  PImage backgroundImage = loadImage("Photo0617.jpg");
  image(backgroundImage, 0, 0); 
  fill(255, 255, 255);
  stroke(0, 0, 0);
  
  ellipse(87, 174, 23, 16);
  ellipse(153, 174, 23, 16);
  frameRate(1);
  
}
void draw () {
  float rran = random(255);
  float gran = random(255);
  float bran = random(255);
    fill(rran, gran, bran);
  stroke(0, 0, 0);
  
  ellipse(87, 174, 23, 16);
  ellipse(153, 174, 23, 16);

  fill(mouseX, mouseY, mouseX);
  ellipse(87, 174, 7, 5);
  ellipse(153, 174, 7, 5);
  
}
