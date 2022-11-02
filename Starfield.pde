Particle[] ripple;
OddballParticle bub;

void setup()
{
  size(400,400);
  frameRate(25);
  ripple = new Particle[700];
  bub = new OddballParticle();
  for(int i = 0; i < ripple.length; i++){
    ripple[i] = new Particle();
    ripple[0] = new OddballParticle();
    ripple[1] = new OddballParticle();
    ripple[5] = new OddballParticle();
  }
  
}
void draw()
{
  background(129,161,196);
   for(int i = 0; i < ripple.length; i++){
     ripple[i].show();
     ripple[i].move();
   }
}
class Particle
{
  int myColor, mySpeed, myOpac;
  double myX, myY, myAngle;
  
  Particle(){
    myX = 200;
    myY = 200;
    myAngle = (Math.random()*3)*Math.PI;
    mySpeed = (int)(Math.random()*7)+1;
    myColor = 255;
    myOpac = (int)(Math.random()*60)+60;
  }
  
  void move(){
   myX = myX + (Math.cos(myAngle)*mySpeed);
   myY = myY + (Math.sin(myAngle)*mySpeed);
  }
  
  void show(){
    noStroke();
    fill(myColor,myOpac);
    ellipse((float)myX,(float)myY,20,20);
  }
}

class OddballParticle extends Particle
{
  OddballParticle(){
    myX = 200;
    myY = 200;
    myAngle = (Math.random()*3)*Math.PI;
    mySpeed = (int)(Math.random()*5)+1;
    myColor = color(255,0,0);
    myOpac = (int)(Math.random()*50)+100;
  }
}
