// Space shooter

// classes
Enemy[] enemy = new Enemy[10];
Crosshair crosshair;
Stars stars;
Background[] background = new Background[9];

boolean gameState = false; // determines the game state
boolean win = false; // win codition boolean

int timerW = 0; // timer for the win screen (reset)



int seed; // random seed int for the stars class

int score = 0; // tracks the score


void setup() {

  size(1200, 800);
  noCursor();
  frameRate(60);

  seed = (int)random(0, 100); // seed for the stars


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

  // array for each enemy
  enemy[0] = new Enemy((int) random(1, 3), (int) random(3, 3));
  enemy[1] = new Enemy((int) random(1, 3), (int) random(3, 3));
  enemy[2] = new Enemy((int) random(1, 3), (int) random(3, 3));
  enemy[3] = new Enemy((int) random(1, 3), (int) random(3, 3));
  enemy[4] = new Enemy((int) random(1, 3), (int) random(3, 3));
  enemy[5] = new Enemy((int) random(1, 3), (int) random(3, 3));
  enemy[6] = new Enemy((int) random(1, 3), (int) random(3, 3));
  enemy[7] = new Enemy((int) random(1, 3), (int) random(3, 3));
  enemy[8] = new Enemy((int) random(1, 3), (int) random(3, 3));
  enemy[9] = new Enemy((int) random(1, 3), (int) random(3, 3));

  // initialize the other classes
  crosshair = new Crosshair();
  stars = new Stars();
}

void draw() {

  // loop for drawing each instance in the array
  for (int i = 0; i < background.length; i++) {

    background[i].Display();
  }

  stars.Display(seed); // displays the starts

  // draws and updates the enemies if the game is running
  if (gameState == true && win == false) {
    timerW = 0;
    // displays the score
    rectMode(CENTER);
    rect(1150, 750, 50, 50);
    fill(0, 255, 0);
    textSize(30);
    textAlign(CENTER, CENTER);
    text(score, 1150, 750);

    for (int e = 0; e < enemy.length; e++) {

      enemy[e].Update();
      enemy[e].Display();
    }
  } else { // draws the start button

    fill(0, 255, 0);
    rectMode(CENTER);
    rect(width/2, height/2, 625, 125);

    fill(255, 0, 0);
    textSize(100);
    textAlign(CENTER, CENTER);
    text("start shooting", width/2, height/2);

    //
    if (mousePressed && mouseX >= 85 && mouseX <= 710
      && mouseY >= 338 && mouseY <= 462) {
      gameState = true;
    }
  }
  // Draws the win screen
  if (win == true) {
    timerW += 1;

    fill(0, 255, 0);
    rectMode(CENTER);
    rect(width/2, height/2, 700, 125);

    fill(255, 0, 0);
    textSize(100);
    textAlign(CENTER, CENTER);
    text("!You Win!", width/2, height/2);

    if (timerW >= 120) { // draws the restart button over the win and makes the game able to reset when clicked
      fill(0, 0, 255);
      rectMode(CENTER);
      rect(width/2, height/2, 700, 125);

      fill(255, 0, 0);
      textSize(100);
      textAlign(CENTER, CENTER);
      text("Restart", width/2, height/2);

      if (mousePressed && mouseX >= 85 && mouseX <= 710
        && mouseY >= 338 && mouseY <= 462) {
        win = false;
      }
    }
  }
  // win condition
  if (score >= 50) {
    win = true;
    score = 0; // score back to 0
  }
  crosshair.Display(); // the crosshair always works to replace the cursor
}
