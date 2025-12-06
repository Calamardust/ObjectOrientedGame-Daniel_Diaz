// Crosshair class
class Crosshair {

  // values for the timer
  float timerLength = 20;
  float timer = 0;

  // boolean for shooting state
  boolean shooting = false;

  Crosshair() {
  }

  void Display() {

    // "Follow the mouse" values
    float x = mouseX;
    float y = mouseY;

    // Draws the blue crosshair when not firing
    if (shooting == false) {

      strokeWeight(5);
      stroke(0, 0, 255);
      noFill();

      beginShape();
      vertex(x + 20, y + 30);
      vertex(x + 40, y + 20);
      vertex(x + 40, y - 20);
      vertex(x + 20, y - 30);
      endShape();

      beginShape();
      vertex(x - 20, y + 30);
      vertex(x - 40, y + 20);
      vertex(x - 40, y - 20);
      vertex(x - 20, y - 30);
      endShape();

      beginShape();
      vertex(x, y +10);
      vertex(x, y - 10);
      endShape();

      beginShape();
      vertex(x + 10, y);
      vertex(x - 10, y);
      endShape();
    }

    // starts shooting when mouse is pressed
    if (shooting == false && mousePressed) {
      shooting = true;
    }

    // Draws red crosshair when firing and increases timer each frame
    if (shooting == true) {
      timer += 1;

      strokeWeight(5);
      stroke(255, 0, 0);
      noFill();

      beginShape();
      vertex(x + 20, y + 30);
      vertex(x + 40, y + 20);
      vertex(x + 40, y - 20);
      vertex(x + 20, y - 30);
      endShape();

      beginShape();
      vertex(x - 20, y + 30);
      vertex(x - 40, y + 20);
      vertex(x - 40, y - 20);
      vertex(x - 20, y - 30);
      endShape();

      beginShape();
      vertex(x, y +10);
      vertex(x, y - 10);
      endShape();

      beginShape();
      vertex(x + 10, y);
      vertex(x - 10, y);
      endShape();
    }
    // Resets timer and stops firing
    if (timer >= timerLength) {
      timer = 0;
      shooting = false;
    }
  }
}
