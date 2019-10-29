snakes s = new snakes();
fruit f = new fruit();
boolean gameover = false;

void setup(){
  background(255);
  size(500,500);
  frameRate(7);
   
}
void draw(){
  if(gameover){
    background(0);
  }else{
    background(50);
    s.move();
    s.draw();
    f.draw();
  }  
}

void drawboard(){
  for(int i=1;i<50;i++){
    line(0,i*10,800,i*10);
    for(int j=1;j<80;j++){
      line(j*10,0,j*10,500);
    }
  }
}

void keyPressed(){
  if (key == CODED) {
    if (keyCode == UP) {
      if(s.x.size() > 1){
        if(s.dirY != 1){
          s.dirY = -1;
          s.dirX = 0;
        }
      }else{
        s.dirY = -1;
        s.dirX = 0;
      }
    } 
    else if (keyCode == DOWN) {
      if(s.x.size() > 1){
        if(s.dirY != -1){
          s.dirY = 1;
          s.dirX = 0;
        }  
      }else{
        s.dirY = 1;
        s.dirX = 0;
      }
    } 
    else if (keyCode == RIGHT) {
      if(s.x.size() > 1){
        if(s.dirX != -1){
          s.dirX = 1;
          s.dirY = 0;
        }
      }else{
        s.dirY = 0;
        s.dirX = 1;
      }
    } 
    else if (keyCode == LEFT){
      if(s.x.size() > 1){
        if(s.dirX != 1 ){
          s.dirX = -1;
          s.dirY = 0;
        }
      }else{
        s.dirY = 0;
        s.dirX = -1;
      }      
    }
  }
}
