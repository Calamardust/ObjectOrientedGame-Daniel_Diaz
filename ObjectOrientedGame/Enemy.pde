
class Enemy {

PVector position;
PVector velocity;


  Enemy() {
    
    position = new PVector(random(0, width), random(0, height)); // starting position
    velocity = new PVector(random(-3, 3), random(-3, 3)); // random velocity/direction

  }
  
  void Update() {
   
     position.add(velocity); // moves the enemy
  }
  
  void Display () {
    
    fill(255);
    circle(position.x, position.y, 30);
  }
}
