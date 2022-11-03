final int matrixWidth = 10;
final int matrixHeight = 30;
final int cellSize = 20;
final color bgd = color(80);

int fallDelay = 1000;

Matrix matrix = new Matrix();

point2d origin;
point2d[][] current;
color currentC;

int rot = 0;

int lastFallTime = 0;


//---------------


void setup() {
  size(201, 601);
  frameRate(60);

  spawnNew();

  matrix.render();
}


//---------------


void draw() {
  matrix.reset();

  for (int i = 0; i < 4; i++) {
    matrix.setCell(current[rot][i].addPoint(origin), currentC);
  }

  if (millis() >= lastFallTime + fallDelay) {
    fall();
    lastFallTime = millis();
  }


      matrix.render();
  }


  //----------------


  void keyPressed() {
    if (keyCode==DOWN) {
      fall();
    } else if (keyCode==UP) {
      rot();
    } else if (keyCode == RIGHT) {
      move(1);
    } else if (keyCode == LEFT) {
      move(-1);
    }

    if (key == ' ') {
      freeze();
    }
  }