class Tree{

  float theta; 
  float i;
  float b;

  
  void branch(float h) {
    h *= 0.66;
  
    if (h > 7) {
      pushMatrix();    
      rotate(theta); 
      line(0, 0, 0, -h); 
      translate(0, -h); 
      branch(h);     
      popMatrix();     
      
      pushMatrix();
      rotate(-theta);
      line(0, 0, 0, -h);
      translate(0, -h);
      branch(h);
      popMatrix();
    }
  } 
  
  void display() {
    if (i<=254){
        stroke(i);
        float a = 30;
        theta = radians(a);
        translate(width/3,height);
        line(0,0,0,-120);
        translate(0,-120);
        branch(90);
        i ++;
    }
    else{
      stroke(255);
      float a = 30;
      theta = radians(a);
      translate(width/3,height);
      line(0,0,0,-120);
      translate(0,-120);
      branch(90);
    }
  }
  
    
  
  
}
