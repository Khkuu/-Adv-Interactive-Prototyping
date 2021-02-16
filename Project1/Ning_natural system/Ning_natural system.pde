ArrayList<Leave> leaves;
String season = "SPRING";

float theta; 
float i;
float b;

void setup() {
  size(1080, 400);
  leaves = new ArrayList<Leave>();
  for (int i = 0; i < 40; i = i+1) {
  leaves.add(new Leave());
  }
}

void draw() {
  background(0);
  frameRate(30);
  float b=0;
  
  pushMatrix();
    if (b<=254){
        tree_display();
    }
  popMatrix();
  
  
  //if ( season.equals("SUMMER")){
  //  for (int i = leaves.size()-1; i >= 0; i--) { 
  //    Leave leave = leaves.get(i);
  //    leave.display();
  //  }
  //}
  
  //if ( season.equals("FALL")){
  //  for (int i = leaves.size()-1; i >= 0; i--) { 
  //    Leave leave = leaves.get(i);
  //    leave.display();
  //    leave.update();
  //  }
  //}
  
  //if ( season.equals("WINTER")){
  //  for (int i = leaves.size()-1; i >= 0; i--) { 
  //    leaves.remove(i);
  //  }
  //}
  
  
}

void mouseReleased(){
  if ( season.equals("SPRING")){
    season = "SUMMER";
  }
  if ( season.equals("SUMMER")){
    season = "FALL";
  }
  if ( season.equals("FALL")){
    season = "WINTER";
  }
}

void tree_display() {
    stroke(255);
    float a = 30;
    theta = radians(a);
    translate(width/3,height);
    line(0,0,0,-120);
    translate(0,-120);
    
    float h = 90;
    
    for (b=90; b > 10; b -= 2){
      if (h > b) {
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
        
        h *= 0.6; 
      }
    }
    
    
}

void branch(float h) {
    h *= 0.66;
    float b = h;
    
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
