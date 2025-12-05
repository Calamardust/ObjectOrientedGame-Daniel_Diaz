
class Enemy {
  // position and velocity vectors
  PVector pos;
  PVector vel;
  // x and y velocity
  float xacc;
  float yacc;
  // enemy alive boolean
  boolean alive = false;
  // spawn timers
  int timer = 0;
  int timerL = 120;


  Enemy(float x, float y) {

    xacc = x;
    yacc = y;

    pos = new PVector(random(0, width), random(0, height)); // starting position
    vel = new PVector(random(x, y), random(x, y)); // random velocity/direction
  }

  void Update() {


    if (pos.x >= width) {
      vel.x *= -1;
    }
    if (pos.x <= 0) {
      vel.x *= -1;
    }
    if (pos.y >= height) {
      vel.y *= -1;
    }
    if (pos.y <= 0) {
      vel.y *= -1;
    }
    pos.add(vel); // moves the enemy
  }


  void Display () {

    // draws the enemy if alive
    if (alive == true) {
      timer = 0; // resets timer

      fill(255);
      circle(pos.x, pos.y, 80);
    }
    // hit detection and dead
    if (mousePressed && mouseX >= pos.x - 40 && mouseX <= pos.x + 40
      && mouseY >= pos.y - 40 && mouseY <= pos.y + 40 && alive == true) {
      alive = false;
    }
    // starts timer
    if (alive == false) {
      timer += 1; // adds to the timer
    }
    // revives the enemy
    if (timer >= timerL) {
      alive = true;
    }
  }
}
