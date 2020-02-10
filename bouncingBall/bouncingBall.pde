float x = 10;
float y = 20;
float speedX = 3;
float speedY = 2.5;

void setup(){
  size(600,600);
  
}

void draw(){
  background(#2AAAF7);
  // movimiento de pelota
  x += speedX;
  y += speedY;
  // checamos que rebote
  if( x >= width || x < 0){
    speedX *= -1;
  }
  
  if( y >= height|| y < 0){
    speedY *= -1;
  }
  // pintar pelota
  fill(247, 182, 220);
  noStroke();
  ellipse(x,y,random(20,30),random(20,30));
  
  
  
}
