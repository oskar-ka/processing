class Matrix {
  Cell[][] matrix = new Cell[matrixWidth][matrixHeight];
  
  boolean[][] stage = new boolean[10][30];
  
  Matrix () {
    for (int i = 0; i < matrixWidth; i++) {
      for (int j = 0; j < matrixHeight; j++) {
        matrix[i][j] = new Cell(i*cellSize, (matrixHeight-j-1)*cellSize);
      }
    }
    
    println("Matrix initialised!");
  }
  
  void setCell(point2d coord, int c){
    matrix[coord.x][coord.y].c = c;
  }
  
  void freeze (point2d p) {
    stage[p.x][p.y] = true;
  }
  
  void render(){
    for (int i = 0; i < matrixWidth; i++) {
      for (int j = 0; j < matrixHeight; j++) {
        matrix[i][j].render();
      }
    }
  }
  
  void reset(){
    for (int i = 0; i < matrixWidth; i++) {
      for (int j = 0; j < matrixHeight; j++) {
        
        if (!stage[i][j]) {
          matrix[i][j].c = bgd;
        }
        
      }
    }
  }
}