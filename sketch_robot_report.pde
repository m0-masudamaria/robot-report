float rx = 0.0;
float ry = 0.0;

float baseH = 20;

float arm1W = 20;
float arm1D = 10;
float arm1L = 10;

float arm2W = 10;
float arm2D = 10;
float arm2L = 30;

float arm3W = 5;
float arm3D = 5;
float arm3L = 30;


float armW1 = 10;
float armW2 = 15;
float armW3 = 5;

float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float l3 = 0;

float dif = 1.0;

int r1 = -450, r2=-450;
float x0 = r1, y0=r2;
float v = 30;

float x = x0, y=y0; 
float vx = v , vy=v;

void setup(){
  size(1200, 800, P3D);
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1); 
  noStroke();
}

void draw(){
   background(255);

rotateX(rx);
rotateY(ry);
  
  if(keyPressed){
    if(key == 'a'){
      angle1 = angle1 + dif;
    }
    if(key == 'A'){
      angle1 = angle1 - dif;
    }
    if(key == 'b'){
      angle2 = angle2 + dif;
    }

    if(key == 'B'){
      angle2 = angle2 - dif;
    }
    
if( angle2 >= 28*PI){
    angle2 = 28*PI;
  }
  else if(  angle2 <= -28*PI ){
    angle2 = -28*PI;
  }
    
    if(key == 'g'){
      angle3 = angle3 + dif;
    }
    if(key == 'G'){
      angle3 = angle3 - dif;
    }
    
if( angle3 >= 28*PI){
    angle3 = 28*PI;
  }
  else if(  angle3 <= -28*PI ){
    angle3 = -28*PI;
  }
    
    if(key == 'R'){
      angle0 = 0;
      angle1 = 0;
      angle2 = 0;
      angle3 = 0;
    }
  }
  
  pushMatrix();
  stroke(3);
    translate(0, 50, 0);
 fill(30, 243, 255); 
  box(1000, 20, 2);
  popMatrix();

  pushMatrix();
  stroke(3);
    translate(0, -50, 20);
 fill(220, 243, 255); 
  box(1000, 20, 2);
  popMatrix();

    if( x > 500 )x=x0;
pushMatrix(); 
if(cos(radians(angle1))>=0)
{ x +=0.5;
 translate(x, 50, 6);
 noStroke();
  sphere(5);

 popMatrix();
}
else{
   translate(x, 50, 6);
   noStroke();
  sphere(5);

 popMatrix();
}
  

if( y > 500 )y=y0;
pushMatrix();
if(cos(radians(angle1))>=0)
{
  y +=0.5;
 translate(y, -50, 26);
 fill(30, 243, 255);
  sphere(5);
}
else{
  translate(y, -50, 26);
 noStroke();
  sphere(5);
}
 noStroke();
 fill(30, 243, 255);
  sphere(5);
 popMatrix();


   
  
  //base
  xyzAxis(20); //xyzAxis @ base
  translate(0,0,baseH/2);
  fill(150);
  box(10,10,baseH);
  
  
  //1st link
  rotateZ(radians(angle1));
  translate(0,0,baseH/2+arm1L/2);
  fill(125);
  box(arm1W,arm1D,arm1L);
  
  //2nd link
  //go to 2nd joint
  translate(0,0,0);
  rotateX(radians(angle2));  
  //go to center of 2nd joint
  translate(0,0,arm2L/2);
  fill(175);
  box(arm2W,arm2D,arm2L);
  
  //3rd link
  // go to 3rd joint
  translate(0, 0, arm2L/2);
  rotateX(radians(angle3));
  // go to center of 3rd joint
  translate(0, 0, arm3L/2);
  fill(200);
  box(arm3W,arm3D,arm3L);
  
  //xyzAxis @ Pr
  translate(0, 0, arm3L/2);
  
if(cos(radians(angle1))>=0)
{
 translate(0, 0, 5);
 noStroke();
fill(220, 243, 255);
 sphere(5);
}
else{translate(0, 0, 5);
 noStroke();
fill(30, 243, 255);
 sphere(5);
}
 }

void keyPressed() {
if (key == CODED) {
if (keyCode == UP)
rx -= 0.1;
else if (keyCode == DOWN)
rx += 0.1;
else if (keyCode == RIGHT)
ry += 0.1;
else if (keyCode == LEFT)
ry -= 0.1;
}
}
