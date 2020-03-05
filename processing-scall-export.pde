// Save at equivalent pixel resolution of 300 when you type 's'

float mySaveScale = 10;

void setup()
{
  size(500,500);
  smooth();
}

void myDrawing(PGraphics pg)
{
  pg.background(255);
  pg.stroke(0);
  pg.strokeWeight(10);
  pg.triangle( 200, 300, 600, 150, 600, 450);
}

void draw()
{
  myDrawing(this.g);
}

void keyPressed()
{
  if (key == 's') {
    
    PGraphics pg = createGraphics(int(width*mySaveScale), int(height*mySaveScale), JAVA2D);
    
    pg.beginDraw();
    pg.scale(mySaveScale);
    myDrawing(pg);
    pg.save("test.png");
    pg.endDraw();
    
    println("SAVING to test.png");
  }
}
