
class Stars {

  Stars() {
  }

  void Display(int s) { // int s for the seed
   
    randomSeed(s); 
    for (int i = 0; i <= 300; i += 1) { // draws a lot of stars

      noStroke();
      fill(255, 255, 255);
      circle(random(0, width), random(0, height), 10);
    }
  }
}
