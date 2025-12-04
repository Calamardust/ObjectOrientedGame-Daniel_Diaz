
class Background {

  float noiseY;

  float Red;
  float Blue;
  float Green;
  float Ypos;

  Background(float ypos, float r, float g, float b) {

    Red = r;
    Blue = b;
    Green = g;
    Ypos = ypos;
  }

  void Display () {

    // I adapted this code from https://processing.org/examples/noisewave.html by Daniel Shiffman.
    fill (Red, Green, Blue);
    noStroke();
    beginShape();
    float noiseX = 0;

    for (float x = 0; x <= width; x += 2) {
      float y = map(noise(noiseX, noiseY), 0, 3, Ypos, 0);

      vertex(x, y);
      noiseX += 0.09;
    }

    noiseY += 0.008;
    vertex(width, height);
    vertex(0, height);

    endShape(CLOSE);
    // end of cited code
  }
}
