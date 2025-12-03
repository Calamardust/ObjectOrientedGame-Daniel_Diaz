// Space shooter

Crosshair crosshair;
Background background;

void setup() {
  size(800, 800);
  noCursor();
  frameRate(60);

  background = new Background();
  crosshair = new Crosshair();
}

void draw() {


  background(0);
  background.Display();
  crosshair.Display();
}
