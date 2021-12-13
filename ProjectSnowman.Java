int x,y;
float circleY = 50;
boolean left,right;
int xspeed = 6;

float ax;
float ay;
int RectangleSize = 30;
boolean overRectangle = false;
boolean locked = false;
float xOffset = 0.0;
float yOffset = 0.0;
PImage ChristLIGHTS;

import processing.sound.*;
SoundFile Wham;

void setup() {

 Wham = new SoundFile(this, "Wham.mp3");
 Wham.play();


  size(800,600);

  background(0,142,255);
  x=520;
  y= 900;
  fill(250,245,245);
  ellipse(x,370,150,150);
  fill(255,0,0);
  ellipse(x,345,10,10);
  fill(0,204,0);
  ellipse(x,369,10,10);
  fill(250,245,245);
  ellipse(x,250,100,100);
  fill(0,0,0);
  ellipse(x-14,225,8,8);
  fill(0,0,0);
  ellipse(x+14,225,8,8);
  arc(x,255,50,30,0,3.14);
  
  
  
  
    //moon
  fill(255,255,204);
  ellipse(70,70,100,100); 
  
  //ground
  fill(250,245,245);
  rect(0,520,900,80);
  
  //hat
  size(900,500);
  ax=width/2.0;
  ay=height/2.0;
  rectMode(RADIUS);
}
void draw() {

  //snowflake
   background(0,142,255);
  ellipse(50, circleY, 20, 20); 
  circleY++;
  if (circleY > height) {
    circleY = 0;
  } 
  background(0,142,255);
  fill(250,245,245);
  ellipse(x,370,150,150);
  fill(255,0,0);
  ellipse(x,345,10,10);
  fill(0,204,0);
  ellipse(x,369,10,10);
  fill(250,245,245);
  ellipse(x,250,100,100);
  fill(0,0,0);
  ellipse(x-14,225,8,8);
  fill(0,0,0);
  ellipse(x+14,225,8,8);
  arc(x,255,50,30,0,3.14);

  
  
    //moon
  fill(255,255,204);
  ellipse(70,70,100,100); 
  
  //ground
  fill(250,245,245);
  rect(0,520,900,80);
  
//cursor is over hat 
if (mouseX > ax-RectangleSize && mouseX < ax+RectangleSize &&
    mouseY > ay-RectangleSize && mouseY < ay+RectangleSize) {
      overRectangle = true;
      if(!locked) {
        stroke(255);
        fill(153);
      }
    }else{
      stroke(153);
      fill(153);
      overRectangle = false;
    }
    //draw the hat 
    rect(ax, ay, RectangleSize, RectangleSize);
}

void mousePressed(){
  if (overRectangle){
    locked = true;
    fill(255,102,0);
  } else {
    locked = false;
  }
  xOffset = mouseX-ax;
  yOffset = mouseY-ay;
  
}

void mouseDragged () {
  if(locked) {
    ax = mouseX - xOffset;
    ay = mouseY - yOffset;
  }
}

void mouseReleased(){
  locked = false;
}


void keyPressed() {
  if(key == 'a') { 
  x = x + xspeed;
    x--; 
  }else if (key == 'd') 
  x = x + xspeed;
    x++;
  }


void keyReleased() {
  if (key == 'a') {
  x = 200;
  }
  else if(key == 'd'){
  x = 600;
}
}
