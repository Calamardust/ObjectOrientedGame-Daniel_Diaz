
class Enemy {
  // position, velocity and acceleration vectors
  PVector pos;
  PVector vel;
  PVector acc;
  // x and y velocity
  float xv;
  float yv;
  // enemy alive boolean
  boolean alive = false;
  // spawn timers
  int timer = 0;
  int timerL = 100;



  Enemy(float x, float y) {

    xv = x;
    yv = y;

    pos = new PVector(random(0, width), random(0, height)); // starting position
    vel = new PVector(random(x, y), random(x, y)); // random velocity/direction
    acc = new PVector(0.01, 0.01);
  }

  void Update() {

    // makes the enemies bounce off the edges of the screen
    if (pos.x >= width) {
      acc.x *= -1;
      vel.x *= -1;
    }
    if (pos.x <= 0) {
      acc.x *= -1;
      vel.x *= -1;
    }
    if (pos.y >= height) {
      acc.y *= -1;
      vel.y *= -1;
    }
    if (pos.y <= 0) {
      acc.y *= -1;
      vel.y *= -1;
    }
    // resets the velocity when it gets to crazy
    if (vel.x >= 15) {
      vel.x = xv;
    }
    if (vel.y >= 15) {
      vel.y = yv;
    }
    if (vel.x <= -15) {
      vel.x = -xv;
    }
    if (vel.y <= -15) {
      vel.y = -xv;
    }

    // makes the vectors work
    vel.add(acc);
    pos.add(vel);
  }


  void Display () {

    
    // draws the enemy if alive
    if (alive == true) {
      timer = 0; // resets timer

      fill(255, 180, 0);
      beginShape();
      vertex(pos.x - 30, pos.y);
      vertex(pos.x, pos.y -20);
      vertex(pos.x + 30, pos.y);
      vertex(pos.x, pos.y + 20);
      endShape();

      fill(255, 0, 0);
      beginShape();
      vertex(pos.x - 10, pos.y);
      vertex(pos.x, pos.y -20);
      vertex(pos.x + 10, pos.y);
      vertex(pos.x, pos.y + 20);
      endShape();
    }
    // hit detection and dead/dont draw enemy
    if (mousePressed && mouseX >= pos.x - 30 && mouseX <= pos.x + 30
      && mouseY >= pos.y - 20 && mouseY <= pos.y + 20 && alive == true) {
      alive = false;
      score += 1;
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
