

int birdheight = 30;
int birdwidth = 30;
int birdpos = 50;
int pipewidth = 60;
float pipeY = 400;
int pipespeed = 5;
int xpos = 900;
int gravity = 6;
int velocity = 15;
int ypos =200;
void setup()
{
  size(1000, 500);
}

void draw()
{
  background(0, 0, 230);
  fill(255, 255, 0);
  ellipse(birdpos, ypos, birdwidth, birdheight);
  ypos += gravity; 
  if (mousePressed)
  {
    ypos -= velocity;
  }
  fill(50, 205, 50);
  xpos -= pipespeed;
  rect(xpos, pipeY, pipewidth, pipeY + 1000);
  if (xpos == 0)
  {
    xpos = 1000;
    pipeY = random(100, 400);
    if (intersects(birdpos, ypos, xpos, (int)pipeY, birdwidth, birdheight, pipewidth, (int)pipeY + 1000))
    {
      birdpos = 50;   
      ypos = 200;
      pipeY = 400;
      xpos = 100;
    }
  }
}
boolean intersects(int birdX, int birdY, int pipeX, int pipeY, int birdWidth, int birdHeight, int pipeWidth, int pipeHeight) {
  if (birdY + birdHeight > pipeY && birdY < pipeY + pipeHeight && birdX + birdWidth > pipeX  && birdX < pipeX + pipeWidth)
    return true;
  else
    return false;
}

