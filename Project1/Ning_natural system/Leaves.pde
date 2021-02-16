class Leave {

  PVector location;
  PVector velocity;
  PVector fix;
  PVector acceleration;
  float topspeed;
  

  Leave() {    location = new PVector(random(250,475), random(150,225));
    fix = new PVector(width/3,210);
    velocity = new PVector(0,0);
    topspeed = 15;
  }

  void update() {
    
    if (location.y <= 390){
    PVector mouse = new PVector(mouseX,mouseY);
      PVector acceleration = PVector.sub(fix, mouse);
      acceleration.setMag(0.2);
      
      velocity.add(acceleration);
      velocity.limit(topspeed);
      location.add(velocity);
    }
  }
  
  void display() {
    stroke(255);
    strokeWeight(2);
    fill(127);
    ellipse(location.x,location.y,10,10);
  }
  

  boolean finished() {
    // Balls fade out
    if (location.y>400) {
      return true;
    } else {
      return false;
    }
  }
}
