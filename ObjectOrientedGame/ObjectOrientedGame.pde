// Space shooter

// classes
Enemy[] enemy = new Enemy[3];
Crosshair crosshair;
Stars stars;
Background[] background = new Background[9];


float timerE = 0;
float timerLengthE = random(120, 360);

int i = 0;
int e = 0;
int seed; // random seed int for the stars class
int vel;



void setup() {
  size(1200, 800);
  noCursor();
  frameRate(60);

  seed = (int)random(0, 100);
  vel = (int)random(0, 10);

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

  enemy[0] = new Enemy(vel, vel);
  enemy[1] = new Enemy(vel, vel);
  enemy[2] = new Enemy(vel, vel);

  crosshair = new Crosshair();
  stars = new Stars();
}

void draw() {

  // loop for drawing each instance in the array
  for (int i = 0; i < background.length; i++) {

    background[i].Display();
  }
  for (int e = 0; e < enemy.length; e++) {

    enemy[e].Update();
    enemy[e].Display();
  }
  crosshair.Display();
  stars.Display(seed);
}
