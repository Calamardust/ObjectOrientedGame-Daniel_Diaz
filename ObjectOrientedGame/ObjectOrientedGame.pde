// Space shooter

// classes
Enemy enemy;
Crosshair crosshair;
Stars stars;
Background[] background = new Background[9];
int i = 0;
int seed;


void setup() {
  size(800, 800);
  noCursor();
  frameRate(60);
   
   seed = (int)random(0,100);

// array for each stripe in background
  background[0] = new Background(0, 95, 10, 100);
  background[1] = new Background(100, 0, 0, 0);
  background[2] = new Background(200, 95, 10, 100);
  background[3] = new Background(300, 0, 0, 0);
  background[4] = new Background(400, 95, 10, 100);
  background[5]= new Background(500, 0, 0, 0);
  background[6] = new Background(600, 95, 10, 100);
  background[7] = new Background(700, 0, 0, 0);
  background[8] = new Background(800, 95, 10, 100);

  enemy = new Enemy();
  crosshair = new Crosshair();
  stars = new Stars();
}

void draw() {

// loop for drawing each instance in the array
  for (int i = 0; i < background.length; i++) {

    background[i].Display();
  }
  enemy.Update();
  enemy.Display();
  crosshair.Display();
  stars.Display(seed);
}
