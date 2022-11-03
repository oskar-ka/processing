final PVector[] points = {
  new PVector(400, 980), 
  new PVector(960, 100), 
  new PVector(1520, 980)
};

final int i = 1000;
final float proportion = 0.5;

PVector point = new PVector(960, 540);

void setup () {
  fullScreen();
  background(52);
  frameRate(60);

  ellipseMode(CENTER);
  fill(255);
  noStroke();

  for (PVector p : points) {
    ellipse(p.x, p.y, 10, 10);
  }
}

void draw () {
  for (int i = 0; i < 100; i++) {
    int rand = floor(random(3));

    point = point.lerp(points[rand], proportion);

    set(floor(point.x), floor(point.y), color(255));
  }
}