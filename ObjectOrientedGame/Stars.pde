
class Stars {

  Stars() {
  }

  void Display() {
    randomSeed(0);
    for (int i = 0; i <= 300; i += 1) {

      noStroke();
      fill(255, 255, 255);
      circle(random(0, width), random(0, height), 10);
    }
  }
}
