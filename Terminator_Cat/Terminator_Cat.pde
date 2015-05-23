import ddf.minim.*;        
AudioSample sound;
 
int x = 213;
int x2 = 140;
int y = 187;
void setup() {
  Minim minim = new Minim(this);        
sound = minim.loadSample("151022__bubaproducer__laser-shot-silenced.wav");
  size(350, 578);
  PImage catPic = loadImage("Terminator_Kitty_by_Miscreator.jpg");
  background(catPic);
 
  


}
void draw() {
  noStroke();
  fill(255, 0, 0);
  x = 213;
  x2 = 140;
  y = 187;
      PImage catPic = loadImage("Terminator_Kitty_by_Miscreator.jpg");
     background(catPic);
  if (keyPressed) {

     ellipse(x, y, 18, 13);
     ellipse(x2, y, 18, 13);
    for (int i = 0; i < 100; i++) {
      
      if (i<98) {
       
        
        sound.trigger();
        ellipse(x, y, 20, 15);
        ellipse(x2, y, 20, 15);
        x+=2;
        x2+=2;
        y+=2;
      }
        
     
      }
    }
  }


