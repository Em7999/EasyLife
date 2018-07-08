class Ball{
  float ellipseX = 0;
  float ellipseY = 0;
  float ellipseL = 100;
  int elliR, elliG, elliB;
  int index;
  
  Ball(float elliX, float elliY, float elliL, int elliR_, int elliG_, int elliB_, int index_){
    ellipseX = elliX;
    ellipseY = elliY;
    ellipseL = elliL;
  
    r = elliR_;
    g = elliG_;
    b = elliB_;
    index = index_;
  }
  
  void update(){
        fill(255,255, 255);
    noStroke();
  ellipse(ellipseX, ellipseY, 200, 200);
 
   
  }
  
   void display(){
    fill(r, g, b);
    noStroke();
  ellipse(ellipseX, ellipseY, 200, 200);
    if(r==255){
      fill(255);
    textFont(myFont);
    textAlign(CENTER, CENTER);
    text((index+1)+"号等待", ellipseX, ellipseY);
  }
  if(g==255){
  
    fill(255);
    textFont(myFont);
    textAlign(CENTER, CENTER);
    text((index+1)+"号到达", ellipseX, ellipseY);
  }
  }
  
}
