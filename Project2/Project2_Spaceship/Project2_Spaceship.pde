import processing.serial.*;
Star[] stars = new Star[400];

Serial myConnection;
 
float control;
float speed;
float effect = 0;
float direction;

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
  speed = map (control, 0 , 4500, 0, 20);
  background(0);
  translate(width/2, height/2);
  rotate(direction/1000);
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
    printArray(data);
    
    if(data.length ==3 ){
      effect = float(data[0]);
      control = float(data[1]);
      direction = float(data[2]);
    }
    
  }

  println( fromSerial );
}
