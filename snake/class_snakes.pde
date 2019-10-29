

class fruit{
  int x,y;
  fruit(){
    x = int(random(0,50)) * 10;
    y = int(random(0,50)) * 10;
  }
  void renew(){
    x = int(random(0,50)) * 10;
    y = int(random(0,50)) * 10;
  }
  void draw(){
    fill (color(255,0,0));
    rect(x,y,10,10);
  }
}

class snakes{
  IntList x = new IntList(),y = new IntList();
  int dirX,dirY;
  snakes(){
    x.append(400);
    y.append(250);
    dirX = 1;
    dirY = 0;
  }
  snakes(int x,int y){
    this.x.append(x);
    this.y.append(y);
  }
  boolean checkfruit(){
    return (x.get(0) == f.x && y.get(0) == f.y);
  }
  boolean bump(){
    int hx = x.get(0);
    int hy = y.get(0);
    for(int i=1;i<x.size();i++){
      if (hx == x.get(i) && hy == y.get(i))  return true;
    }
    return false;
  }
  void move(){
    int px = x.get(0);
    int py = y.get(0);
    x.set(0, x.get(0) + dirX*10);
    y.set(0, y.get(0) + dirY*10);
    if (x.get(0)>490) x.set(0, 0);
    if (y.get(0)>490) y.set(0, 0);
    if (x.get(0)<0) x.set(0, 490);
    if (y.get(0)<0) y.set(0, 490);
    if(checkfruit()){
      x.append(0);
      y.append(0);
      f.renew(); 
    }
    if(bump()){
      gameover = true;
    }
    for(int i=1;i<x.size();i++){
      int nx = px;
      int ny = py;
      px = x.get(i);
      py = y.get(i);
      x.set(i,nx);
      y.set(i,ny);
    }
  }
  void draw(){
    fill(color(0,255,0));
    for(int i=0;i<x.size();i++){   
      rect(x.get(i),y.get(i),10,10);
    }
  }
}
