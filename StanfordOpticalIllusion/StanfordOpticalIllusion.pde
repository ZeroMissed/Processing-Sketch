/* no matter how a user changes the first 3 parameters and the size(), the program will draw a perfectly centered illusion*/
final int BOX_PER_SIDE = 6;
final int BOX_SIZE = 80;
final int BOX_SPACING = 10;
float illusionSize;
float offsetX;
float offsetY;

void setup() {
 size(800, 800);
 illusionSize = BOX_PER_SIDE * (BOX_SIZE + BOX_SPACING) + BOX_SPACING;
 offsetX = (width - illusionSize - BOX_SPACING)/2; 
 offsetY = (height - illusionSize - BOX_SPACING)/2; 
}

void draw() {
  
  pushMatrix(); //push current xy plane
  translate(offsetX, offsetY); //move the origin so that the illusion is centered
  drawBoxes();
  popMatrix(); //revert to pushed xy plane
}

public void drawBoxes() {
fill(255);
rect(0, 0, illusionSize, illusionSize);
fill(0);
for(int y = BOX_SPACING; y < illusionSize; y+=BOX_SIZE+BOX_SPACING) {
  for(int x = BOX_SPACING; x < illusionSize; x+=BOX_SIZE+BOX_SPACING) {
  rect(x, y, BOX_SIZE, BOX_SIZE);
  }
}
}