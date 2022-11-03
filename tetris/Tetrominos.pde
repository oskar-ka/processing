class point2d {
  int x;
  int y;

  point2d (int x, int y) {
    this.x = x;
    this.y = y;
  }

  point2d addPoint (point2d a) {
    point2d result = new point2d (this.x + a.x, this.y + a.y);

    return (result);
  }
}

color cI = color (0, 200, 255);
color cO = color (255, 245, 0);
color cT = color (200, 0, 255);

final point2d[][] I = {

  {new point2d (0, 2), new point2d (1, 2), new point2d (2, 2), new point2d (3, 2)}, 
  {new point2d (2, 0), new point2d (2, 1), new point2d (2, 2), new point2d (2, 3)}, 
  {new point2d (0, 1), new point2d (1, 1), new point2d (2, 1), new point2d (3, 1)}, 
  {new point2d (1, 0), new point2d (1, 1), new point2d (1, 2), new point2d (1, 3)}, 
  {new point2d (3, 26)}
};

final point2d[][] O = {
  {new point2d (0, 0), new point2d (1, 0), new point2d (0, 1), new point2d (1, 1)}, 
  {new point2d (0, 0), new point2d (1, 0), new point2d (0, 1), new point2d (1, 1)}, 
  {new point2d (0, 0), new point2d (1, 0), new point2d (0, 1), new point2d (1, 1)}, 
  {new point2d (0, 0), new point2d (1, 0), new point2d (0, 1), new point2d (1, 1)}, 
  {new point2d (4, 28)}
};

final point2d[][] T = {
  {new point2d (0,1), new point2d (1,1), new point2d (2,1), new point2d (1,2)}, 
  {new point2d (1,0), new point2d (1,1), new point2d (1,2), new point2d (2,1)}, 
  {new point2d (0,1), new point2d (1,1), new point2d (2,1), new point2d (1,0)}, 
  {new point2d (1,0), new point2d (1,1), new point2d (1,2), new point2d (0,1)}, 
  {new point2d (3,27)}
};

/*final point[][] S = {
 {new point (), new point (), new point (), new point ()},
 {new point (), new point (), new point (), new point ()},
 {new point (), new point (), new point (), new point ()},
 {new point (), new point (), new point (), new point ()},
 };
 
 point[][] Z = {
 {new point (), new point (), new point (), new point ()},
 {new point (), new point (), new point (), new point ()},
 {new point (), new point (), new point (), new point ()},
 {new point (), new point (), new point (), new point ()},
 };
 
 final point[][] J = {
 {new point (), new point (), new point (), new point ()},
 {new point (), new point (), new point (), new point ()},
 {new point (), new point (), new point (), new point ()},
 {new point (), new point (), new point (), new point ()},
 };
 
 final point[][] L = {
 {new point (), new point (), new point (), new point ()},
 {new point (), new point (), new point (), new point ()},
 {new point (), new point (), new point (), new point ()},
 {new point (), new point (), new point (), new point ()},
 };
 */