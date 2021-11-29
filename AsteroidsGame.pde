Ship ship;
Star stars[] = new Star[500];

void setup(){
  background(10);
  size(800, 800);
  ship = new Ship();
  
  
  for(int i = 0 ; i < stars.length ; i++){
    stars[i] = new Star();
  }
 
}

void draw(){
  background(10);
  for(int i = 0 ; i < stars.length ; i++){
    stars[i].update();
  }
  ship.move();
  ship.show();
  if(keyPressed){
    if(keyCode == LEFT){
      ship.turn(-10);
    }
    if(keyCode == RIGHT){
      ship.turn(10);
    }
    if(keyCode == UP){
      ship.accelerate(0.1);
    }
    if(keyCode == DOWN){
      ship.accelerate(-0.1);
    }
    if(ship.getHyperspaceFlag() == false){
      if(key == 'h' || key == 'H'){
        ship.hyperspace();
        ship.setHyperspaceFlag(true);
      }
    }
  }
  
}

void keyReleased(){
  ship.setHyperspaceFlag(false);

}
