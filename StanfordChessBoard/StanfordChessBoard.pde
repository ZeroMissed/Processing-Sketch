final int nRows = 10;
final int nColumns = 10;

void setup() {
  size(800, 800);
}
void draw(){
  float boxWidth = width/nColumns;
  float boxHeight = height/nRows;
  for(int x = 0; x < nColumns * boxWidth; x+=boxWidth) {
    for(int y = 0; y < nRows * boxHeight; y+=boxHeight) {
      if(y/boxHeight%2 == x/boxWidth%2) {
        fill(0);
      }
      else
        fill(255);
        rect(x, y, boxWidth, boxHeight);
      if(y/boxHeight%2 == x/boxWidth%2) {
        fill(255);
      }
      else
        fill(0);
        ellipse(x + boxWidth/2, y + boxHeight/2, (2 * boxWidth)/3, (2 * boxHeight)/3);
    }
  }
}