void rot () {
  if (rot<3) {
    rot++;
  } else {
    rot = 0;
  }
}

//------------

void freeze () {
  for (int i = 0; i < 4; i++) {

    point2d fPoint = current[rot][i].addPoint(origin);

    matrix.freeze(fPoint);
  }

  spawnNew();
}

//------------

void move (int dir) {

  boolean check = true;

  for (int i = 0; i < 4; i++) {
    if (dir > 0) { //Moving right


      point2d coord = new point2d (current[rot][i].x+origin.x+1, current[rot][i].y+origin.y);

      boolean barrier = coord.x > 9 ? true : matrix.stage[coord.x][coord.y];
      println(coord.x);
      
      if (barrier) {
        check = false;
      }
    } else { //Moving left



      point2d coord = new point2d (current[rot][i].x+origin.x-1, current[rot][i].y+origin.y);

      boolean barrier = coord.x < 0 ? true : matrix.stage[coord.x][coord.y];

      if (barrier) {
        check = false;
      }
    }
  }

  if (check) {
    origin.x += dir;
  }
}

//------------

void fall () {
  boolean checkBarrier = true;
  boolean startFading = false;

  for (int i = 0; i < 4; i++) {

    point2d coord1 = new point2d (current[rot][i].x+origin.x, (current[rot][i].y+origin.y-1));
    point2d coord2 = new point2d (current[rot][i].x+origin.x, (current[rot][i].y+origin.y-2));
    
    boolean barrier = matrix.stage[coord1.x][coord1.y];
    
    
    boolean checkFade = coord2.y >= 0 ? matrix.stage[coord2.x][coord2.y] : true;

    if (barrier) {
      checkBarrier = false;
    }
    
    if (checkFade){
     startFading = true; 
    }
  }

  if (checkBarrier) {
    origin.y--;
  }
  
  if (startFading){
    fade();
  }
}

//------------

void fade () {
  println("Fade");
}

//------------

void spawnNew () {
  int tetNum = floor(random(3));

  switch(tetNum) {
  case 0:
    current = I;
    currentC = cI;
    break;

  case 1:
    current = O;
    currentC = cO;
    break;

  case 2: 
    current = T;
    currentC = cT;
    break;
  }
  
  rot = 0;
  origin = new point2d (current[4][0].x, current[4][0].y);
}