import processing.serial.*;
Star[] stars = new Star[400];

Serial myConnection;
 
float control;
float speed;
float effect = 0;
float turnl;
float turnr;
float weight;


void setup() {
  size(600, 600);
  for (int i =0; i< stars. length; i++) {
    stars[i] = new Star();
  }
  printArray(Serial.list());
  myConnection = new Serial(this, Serial.list()[3], 9600);
  myConnection.bufferUntil('\n');
}

void draw() {
  background(0);
  println("Frame Rate: " + frameRate);
  if(weight>0){
    speed = map (control, 0 , 4500, 0, 20);
  }
  
  else{
    speed =0;
    textAlign(CENTER);
    textSize(32);
    fill(255);
    text("Run out of energy ", 300, 280); 
    textSize(18);
    text("Please add energy cube to the engine ", 300, 310); 
  }

  //rotate(radians(60));
  if (turnl<15){
    turnl=0;
  }
  if (turnr<15){
    turnr=0;
  }
  translate(width/2 + turnl - turnr, height/2);
  for (int i =0; i< stars. length; i++) {
    stars[i].update();
    stars[i].show();
    if (effect == 1){
      stars[i].effect();
    }
  }
  
}

void serialEvent(Serial conn) {
  String fromSerial = conn.readString();
  
  if (fromSerial != null){
    fromSerial = trim(fromSerial);
    
    String[] data = split (fromSerial , ',');
    //printArray(data);
    
    if(data.length == 5 ){
      effect = float(data[0]);
      control = float(data[1]);
      turnl = float(data[2]);
      turnr = float(data[3]);
      weight = float(data[4]);
    }
    
  }

  println( fromSerial );
}
