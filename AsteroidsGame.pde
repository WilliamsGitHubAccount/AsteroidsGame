Ship ship;
Ship ships[] = new Ship[10];

boolean shootFlag = false;
boolean hyperspaceFlag = false;

Star stars[] = new Star[500];
ArrayList<Bullet> bullets = new ArrayList<Bullet>();

void setup(){
  background(10);
  size(800, 800);
  ship = new Ship();
  
  
  for(int i = 0 ; i < stars.length ; i++){
    stars[i] = new Star();
  }
 
 
  for(int i = 0 ; i < ships.length ; i++){
    ships[i] = new Ship();
    ships[i].myCenterX += Math.random()*80;
    ships[i].myCenterY += Math.random()*50;
  }
}

void draw(){
  background(10);
  for(int i = 0 ; i < stars.length ; i++){
    stars[i].update();
  }
  
  for(int i = 0 ; i< ships.length ; i++){
    ships[i].move();
    ships[i].show();
    if(keyPressed){
      if(keyCode == LEFT){
        ships[i].turn(-10);
      }
      if(keyCode == RIGHT){
        ships[i].turn(10);
      }
      if(keyCode == UP){
        ships[i].accelerate(0.1);
      }
      if(keyCode == DOWN){
        ships[i].accelerate(-0.1);
      }
      if(hyperspaceFlag == false){
        if(key == 'h' || key == 'H'){
          ships[i].hyperspace();
          hyperspaceFlag = true;
        }
      }
      if(shootFlag == false){
        if(key == ' '){
          shoot();
          shootFlag = true;
        }
      }
    }
  }
  
}

void shoot(){
  bullets.add(new Bullet());
  //bullet.myXspeed = ship.get_mXspeed();
}

void keyReleased(){
  hyperspaceFlag = false;
  shootFlag = false;
}
