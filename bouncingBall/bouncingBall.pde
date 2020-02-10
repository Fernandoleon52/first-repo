float x = 10;
float y = 20;
float speedX = 3;
float speedY = 2.5;

void setup(){
  size(600,600);
  
}

void draw(){
  background(#2AAAF7);
  move();
  bounce();
  render();
}

//Funcion en processing
//tipo de regreso nombrefuncion (tipoArg1, arg1, tipoArg2 arg2, ....) {...}
void move(){
  // movimiento de pelota
  x += speedX;
  y += speedY;
  
}

void bounce(){
  if( x >= width || x < 0){
    speedX *= -1;
  }
  
  if( y >= height|| y < 0){
    speedY *= -1;
  }
  
}

void render(){
   fill(247, 182, 220);
  noStroke();
  ellipse(x,y,random(20,30),random(20,30));
  
}
