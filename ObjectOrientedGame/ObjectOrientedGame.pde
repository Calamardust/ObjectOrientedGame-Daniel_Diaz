// Space shooter

Crosshair crosshair;


void setup() {
  size(800, 800);
  noCursor();
  frameRate(60);

  crosshair = new Crosshair();
  // put game state here (lose/win screen and/or pause)
}

void draw() {
  // nothing rn

  background(0);
  crosshair.Display();
}
