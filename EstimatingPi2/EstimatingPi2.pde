float qpi = 0;
float base = 1;
boolean add = true;

void setup() {
  frameRate(10);
}

void draw () {
  for (int i = 0; i < 100; i++){
  float fraction = 1/base;

  if(add){
   qpi+=fraction;
   add=false;
  }else{
   qpi-=fraction; 
   add=true;
  }
  base += 2;
  }
  
  println(qpi*4);
}