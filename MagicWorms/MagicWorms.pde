
void setup(){
 size(500, 500);
 background(0);
 frameRate(100);
 makeMagical();
}
 
void draw(){
    
    smooth();
    int r = (int)random(height);
    int g = (int)random(width);
    int b = (int)random(height);
    fill(r, g, b);
    
    for(int i = 0; i < 1; i++){
    ellipse(getWormX(i), getWormY(i), 20, 20);
    }
    
}

float frequency = .001;
float noiseInterval = PI; 

void makeMagical() {
  fill( 0, 0, 0, 10 );rect(0, 0, width, height);noStroke();
}

float getWormX(int i) {
  return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}
