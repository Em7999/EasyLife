# EasyLife
### 宿舍为单元的外卖接受箱
  随着外卖在校园里的普及，它所带来的种种问题等待我们解决。由这些问题出发，我设计了一个接受箱，arduino与processing结合，使外卖与客户取得更高效的联系。

灵感：自主取件箱

实验电路：
![arduino-EasyLife-1-The-experimental-circuit](https://github.com/Em7999/EasyLife/blob/master/EasyLife_bb.png)

实际电路：
![arduino-EasyLife-2-The-experimental-circuit](https://github.com/Em7999/EasyLife/blob/master/EasyLife_20180708094622.png)

元器件：按钮*8，导线，电阻*8，LED
```
*/
int redPin = 13;
int greenPin = 12;
int bluePin = 11;
int k = 0;
int r = 0;
int g = 0;
int b = 0;
int v1;
int v2;
int v3;
int v4;
int l;
int h;
int y;
int x;
int myRed[4] = {0};
int myGreen[4] = {0};


void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(13, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(2, INPUT);
  pinMode(3, INPUT);
  pinMode(4, INPUT);
  pinMode(5, INPUT);
  pinMode(6, INPUT);
  pinMode(7, INPUT);
  pinMode(8, INPUT);
  pinMode(9, INPUT);
}

void loop() {
  v1 = digitalRead(2);
  v2 = digitalRead(3);
  v3 = digitalRead(4);
  v4 = digitalRead(5);
  y = digitalRead(6);
  l = digitalRead(7);
  h = digitalRead(8);
  x = digitalRead(9);


  for (int i = 0; i < 4; i++) {
    if (v1 == HIGH) {
      k = 0;
      myRed[0] = 0;
      myGreen[0] = 255;

    }
    if (y == HIGH) {
      k = 0;
      myRed[0] = 255;
      myGreen[0] = 0;

    }
    if (v2 == HIGH) {
      k = 1;
      myRed[1] = 0;
      myGreen [1] = 255;

    }
    if (l == HIGH) {
      k = 1;
      myRed[1] = 255;
      myGreen[1] = 0;

    }
    if (v3 == HIGH) {
      k = 2;
      myRed[2] = 0;
      myGreen[2] = 255;

    }
    if (h == HIGH) {
      k = 2;
      myRed[2] = 255;
      myGreen[2] = 0;

    }

    if (v4 == HIGH) {
      k = 3;
      myRed[3] = 0;
      myGreen[3] = 255;

    }
    if (x == HIGH) {
      k = 3;
      myRed[3] = 255;
      myGreen[3] = 0;
    }


    r = myRed[i];
    g = myGreen[i];
    doColor(r, g, b);
    wePrint();
    k++;
  }
  k = 0;
}

void doColor(int red, int green, int blue) {


  analogWrite(redPin, red);
  analogWrite(greenPin, green);
  analogWrite(bluePin, blue);



}


void wePrint() {
  Serial.print(k);
  Serial.print(",");
  Serial.print(r);
  Serial.print(",");
  Serial.print(g);
  Serial.print(",");
  Serial.print(b);
  Serial.print("\n");
  delay(100);
}

```
