// Crosshair class
class Crosshair {

  float timerLength = 20;
  float timer = 0;
  float timerCooldown = 0;
  float timerC = 30;
  boolean shooting = false;

  Crosshair() {
  }

  void Display() {

    print(timer);
    float x = mouseX;
    float y = mouseY;

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

    if (shooting == false && mousePressed) {
      shooting = true;
    }

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
    if (timer >= timerLength && timerCooldown >= timerC) {
      timer = 0;
      timerCooldown = 30;
      shooting = false;
     
    }
  }
}
