final int iterations = 999999;
final int cycles = 10;



void draw() {
}

void keyPressed() {
  calculatePi();
}

void calculatePi() {
  int inside = 0;
  
  for (int i = 0; i < iterations; i++) {
    float rand1 = random(-1, 1);
    float rand2 = random(-1, 1);

    float d = dist(0, 0, rand1, rand2);

    if (d<1) {
      inside++;
    }
  }




  float pi = (inside / float(iterations)) * 4;
  println("Estimated PI = " + pi);

  float error = abs(pi - PI);
  float percentError = error / PI * 100;

  println("Percent Error = " + percentError + "%");
  println();
}