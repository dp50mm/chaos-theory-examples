float a = 1;
float b = 1;
float m = 3; //4
float n1 = 5; //2
float n2 = 18; //4
float n3 = 18; //13
float angle = 0;

int checker = 0;

float scale = 1;

float x;
float y;

float xold;
float yold;

float first;
float second;
float solved;

float radius;

int resolution = 20; //array length
//float pointsArray[] = new float[resolution];

float screensize = 800;

void setup() {
  size(800, 800);
  background(0);
  stroke(250);
  strokeWeight(2);
}

void draw() {
  background(0);
  smooth();
  points();
  //testpoints();
  m = map(mouseX, 0, screensize, 2, 40);
  n2 = map(mouseY, 0, screensize, 2, 40);
}


float formula() {
  first = pow((abs(cos(m*angle)/4)), n2);
  second = pow((abs(sin(m*angle)/4)), n3);
  solved = pow((first+second), (-1*(1/n1)));
  return solved;
}

void points() {
  checker = 0;
  for (angle = 0; angle < PI*2; angle =(angle + (PI*2)/resolution)) {
    radius = formula();
    print(angle);
    print("\t");
    print(checker);
    print("\t");
    print(radius);
    print("\t");
    print("\t");
    print("\t");
    //pointsArray[checker] = solved;
    checker++;

    x = radius * cos(angle);
    y = radius * sin(angle);
    strokeWeight(map(radius, 0 ,2000,1,20));
    //point(x, y);
    //point(((screensize/2)+(x*scale)), ((screensize/2)+(y*scale)));
    line(((screensize/2)+(xold*scale)), ((screensize/2)+(yold*scale)), ((screensize/2)+(x*scale)), ((screensize/2)+(y*scale)));
    print("x : ");
    print(x);
    print("\t");
    print("y : ");
    print(y);
    print("\t");
    print("\t");
    print("x*20 : ");
    print(x*20);
    print("\t");
    print("y*20 : ");
    print(y*20);
    print("\t");
    println();

    //for lines
    xold = x;
    yold = y;
  } 
  reverseengineering(); 
  //exit();
}


void   reverseengineering() {
}

void testpoints() {
  point(30, 20);
  point(85, 20);
  point(85, 75);
  point(30, 75);
}