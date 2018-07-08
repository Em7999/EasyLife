import processing.serial.*;//引入serial库
 
 int k = 0;
int r = 0;
int g = 0;
int b = 0;



Serial myPort;

Ball[] myBall = new Ball[4];

PFont myFont;

void setup() {
  size(1800, 800);
  background(0);
   myPort = new Serial(this,"COM5", 9600);
  myPort.bufferUntil('\n'); 
  myFont = createFont("微软雅黑", 40);
  for (int i = 0; i < 4; i ++) {
    myBall[i] = new Ball(450+300*i, 400, 200, 255, 255, 255, i);
  
  }
  //myBall = new Ball();
}

void draw() {
  background(0);
  //fill(0, 20);
  //rect(0, 0, width, height);
  
  for (int i = 0; i < 4; i ++) {
    myBall[i].update();
  }
  myBall[k].display();
 
  
}
void serialEvent(Serial p) {
  String inString = p.readString();
  print(inString);
  
  String[] list = split(inString, ',');
// list[0] is now "Chernenko", list[1] is "Andropov"...
  k = int (list[0]);
  r = int(list[1]);
  g = int(list[2]);
  b = int(list[3]);
}
