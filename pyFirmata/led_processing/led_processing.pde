// http://koreasw.org/?p=745

/*
//mouse pressed processing 1
int i=0;

void setup(){
  size(400,400);
}

void draw(){
  if(mousePressed){
    ++i;
    println(i);
  }
}
*/

/*
//mouse pressed processing 2
//one time -> one print
void setup(){
  size(400,400);
}

void draw(){
 
}

void mousePressed(){
  println("mousePressed");
}
*/
/*
//left and right and center
void setup(){
  size(400,400);
}

void draw(){
 
}

void mousePressed(){
  if(mouseButton == LEFT){
    print("LEFT");
  }
  else if(mouseButton == RIGHT){
    print("RIGHT");
  }
  else if(mouseButton == CENTER){
    print("CENTER");
  }
}
*/


/*
// led on off
import processing.serial.*;
import cc.arduino.*;

Arduino arduino;
int ledPin=6;

void setup(){
  size(400,400);
  println(Arduino.list());
  arduino = new Arduino(this,Arduino.list()[0],57600);
  arduino.pinMode(ledPin,Arduino.OUTPUT);
}

void draw(){
  arduino.digitalWrite(ledPin,Arduino.HIGH);
  delay(1000);
  arduino.digitalWrite(ledPin,Arduino.LOW);
  delay(1000);
}
*/

/*
// led on off using black and white lect
import processing.serial.*;
import cc.arduino.*;

Arduino arduino;
int ledPin=6;

void setup(){
  size(400,400);
  background(0);
  fill(255);
  noStroke();
  rect(width/2,0,width/2,height);
  
  println(Arduino.list());
  arduino = new Arduino(this,Arduino.list()[0],57600);
  arduino.pinMode(ledPin,Arduino.OUTPUT);
}
void draw(){}
void mouseMoved(){
  if(mouseX<width/2){
    arduino.digitalWrite(ledPin,Arduino.LOW);
  }
  else {
    arduino.digitalWrite(ledPin,Arduino.HIGH);
  }
}
*/


import processing.serial.*;
import cc.arduino.*;

Arduino arduino;
int ledPin=6;

void setup(){
  size(400,400);
  
  for(int i=0;i<width;i++){
    stroke(map(i,0,width-1,0,255));
    line(i,0,i,height);
  }
  
  println(Arduino.list());
  arduino = new Arduino(this,Arduino.list()[0],57600);
}

void draw(){}
void mouseDragged(){
  arduino.analogWrite(ledPin,int(map(mouseX,0,width-1,0,255)));
}
