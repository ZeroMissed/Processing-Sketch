final int BRICK_WIDTH = 30;
final int BRICK_HEIGHT = 20;
final int BRICKS_IN_BASE = 3 + 1;

void setup() {
  size(800, 800);
}
void draw() {
translate(width/2, height - BRICK_HEIGHT * BRICKS_IN_BASE);
  for(int y = 0; y <= BRICKS_IN_BASE; y++){
    for(int x = 0; x < y; x++) {
      pushMatrix();
      translate(-(BRICK_WIDTH * y)/2, 0);
      rect(x * BRICK_WIDTH, y * BRICK_HEIGHT, BRICK_WIDTH, BRICK_HEIGHT);
      popMatrix();
    }
}
}