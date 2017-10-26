//size(100, 100, P3D);
//line(30, 20, 0, 85, 20, 15);
//stroke(126);
//line(85, 20, 15, 85, 75, 0);
//stroke(255);
//line(85, 75, 0, 30, 75, -50);

import peasy.*;

PeasyCam cam;

ArrayList particles;
ArrayList links;
Mass[] mass = new Mass[8];
Spring[] springs = new Spring[2];

class Mass {
  float mass;
  float xpos, ypos, zpos;
  float xpos_moved, ypos_moved;
  float xpos_temp, ypos_temp, zpos_temp;
  float xvel, yvel, zvel;
  float xaccel, yaccel, zaccel = 0;
  float rad;
  float xforce, yforece, zfoce = 0;
  float size = 5;
  boolean over = false;
  boolean move = false;
  boolean pin = false;
  boolean in_solid_link = false;
  int index;
  
  Mass(float m, float x, float y, float z, boolean pin_n, int ind){
    xpos = xpos_temp = x;
    ypos = ypos_temp = y;
    zpos = zpos_temp = z;
    mass = m;
    pin = pin_n;
    index = ind;
  }
}

class Spring {
  Mass m1;
  Mass m2;
  float s_length_o;
  float s_length_n;
  float xvector, yvector, zvector = 0;
  float xvector_n, yvector_n, zvector_n = 0;
  float threashold = 60;
  int flag = 0;
  int index;
  float xdir, ydir, zdir = 0;
  
  Spring (Mass p1, Mass p2, int index2)
  {
    m1 = p1;
    m2 = p2;
  }
  
}
void setup() {
  size(1000,500, P3D);
  
  cam = new PeasyCam(this,500,500,0,1500);
  //make_cube();
  noStroke();
  lights();
  
  mass[0] = new Mass(10,100,100,0,false,0);
  mass[1] = new Mass(10,200,100,0,false,1);
  mass[2] = new Mass(10,100,200,0,false,2);
  mass[3] = new Mass(10,100,100,100,false,3);
  mass[4] = new Mass(10,100,200,100,false,4);
  mass[5] = new Mass(10,200,200,100,false,5);
  mass[6] = new Mass(10,200,200,0,false,6);
  mass[7] = new Mass(10,200,100,100,false,7);
  
  //pushMatrix();
  //translate(100,100,0);
  //sphere(5);
  //popMatrix();
  //pushMatrix();
  //translate(100,200,0);
  //sphere(5);
  //popMatrix();
  
}

void draw() {
  background(0);
  fill(255,0,0);
  for (Mass mass : mass) {
    pushMatrix();
    translate(mass.xpos_temp, mass.ypos_temp, mass.zpos_temp);
    sphere(10);
    popMatrix();
  }
}

//void make_cube(float multiple, float move)
//{
//  line(0*multiple+move,0*multiple+move,0*multiple+move,1*multiple+move,0*multiple+move,0*multiple+move);
//  line(0*multiple+move,0*multiple+move,0*multiple+move,0*multiple+move,1*multiple+move,0*multiple+move);
//  line(0*multiple+move,0*multiple+move,0*multiple+move,0*multiple+move,0*multiple+move,1*multiple+move);
//  line(0*multiple+move,1*multiple+move,0*multiple+move,1*multiple+move,1*multiple+move,0*multiple+move);
//  line(0*multiple+move,1*multiple+move,0*multiple+move,0*multiple+move,1*multiple+move,1*multiple+move);
//  line(0*multiple+move,0*multiple+move,1*multiple+move,0*multiple+move,1*multiple+move,1*multiple+move);
//  line(0,0,1,1,0,1);
//  line(1,0,0,1,0,1);
//  line(1,0,0,1,1,0);
//  line(1,1,1,1,0,1);
//  line(1,1,1,1,1,0);
//  line(1,1,1,0,1,1);
//}//size(100, 100, P3D);
//line(30, 20, 0, 85, 20, 15);
//stroke(126);
//line(85, 20, 15, 85, 75, 0);
//stroke(255);
//line(85, 75, 0, 30, 75, -50);

import peasy.*;

PeasyCam cam;

ArrayList particles;
ArrayList links;
Mass[] mass = new Mass[8];
Spring[] springs = new Spring[2];

class Mass {
  float mass;
  float xpos, ypos, zpos;
  float xpos_moved, ypos_moved;
  float xpos_temp, ypos_temp, zpos_temp;
  float xvel, yvel, zvel;
  float xaccel, yaccel, zaccel = 0;
  float rad;
  float xforce, yforece, zfoce = 0;
  float size = 5;
  boolean over = false;
  boolean move = false;
  boolean pin = false;
  boolean in_solid_link = false;
  int index;
  
  Mass(float m, float x, float y, float z, boolean pin_n, int ind){
    xpos = xpos_temp = x;
    ypos = ypos_temp = y;
    zpos = zpos_temp = z;
    mass = m;
    pin = pin_n;
    index = ind;
  }
}

class Spring {
  Mass m1;
  Mass m2;
  float s_length_o;
  float s_length_n;
  float xvector, yvector, zvector = 0;
  float xvector_n, yvector_n, zvector_n = 0;
  float threashold = 60;
  int flag = 0;
  int index;
  float xdir, ydir, zdir = 0;
  
  Spring (Mass p1, Mass p2, int index2)
  {
    m1 = p1;
    m2 = p2;
  }
  
}
void setup() {
  size(1000,500, P3D);
  
  cam = new PeasyCam(this,500,500,0,1500);
  //make_cube();
  noStroke();
  lights();
  
  mass[0] = new Mass(10,100,100,0,false,0);
  mass[1] = new Mass(10,200,100,0,false,1);
  mass[2] = new Mass(10,100,200,0,false,2);
  mass[3] = new Mass(10,100,100,100,false,3);
  mass[4] = new Mass(10,100,200,100,false,4);
  mass[5] = new Mass(10,200,200,100,false,5);
  mass[6] = new Mass(10,200,200,0,false,6);
  mass[7] = new Mass(10,200,100,100,false,7);
  
  //pushMatrix();
  //translate(100,100,0);
  //sphere(5);
  //popMatrix();
  //pushMatrix();
  //translate(100,200,0);
  //sphere(5);
  //popMatrix();
  
}

void draw() {
  background(0);
  fill(255,0,0);
  for (Mass mass : mass) {
    pushMatrix();
    translate(mass.xpos_temp, mass.ypos_temp, mass.zpos_temp);
    sphere(10);
    popMatrix();
  }
}

//void make_cube(float multiple, float move)
//{
//  line(0*multiple+move,0*multiple+move,0*multiple+move,1*multiple+move,0*multiple+move,0*multiple+move);
//  line(0*multiple+move,0*multiple+move,0*multiple+move,0*multiple+move,1*multiple+move,0*multiple+move);
//  line(0*multiple+move,0*multiple+move,0*multiple+move,0*multiple+move,0*multiple+move,1*multiple+move);
//  line(0*multiple+move,1*multiple+move,0*multiple+move,1*multiple+move,1*multiple+move,0*multiple+move);
//  line(0*multiple+move,1*multiple+move,0*multiple+move,0*multiple+move,1*multiple+move,1*multiple+move);
//  line(0*multiple+move,0*multiple+move,1*multiple+move,0*multiple+move,1*multiple+move,1*multiple+move);
//  line(0,0,1,1,0,1);
//  line(1,0,0,1,0,1);
//  line(1,0,0,1,1,0);
//  line(1,1,1,1,0,1);
//  line(1,1,1,1,1,0);
//  line(1,1,1,0,1,1);
//} 