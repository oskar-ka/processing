class Cell {
  color c = bgd;
  int posx, posy;
  
  Cell (int x, int y) {
    posx = x;
    posy = y;
  }
  
  void render () {
    stroke(255);
    fill(c);
    rect(posx,posy, cellSize, cellSize);
  }
}