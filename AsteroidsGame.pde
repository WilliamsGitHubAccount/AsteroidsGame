
Ship ship;
//Ship ships[] = new Ship[10];

boolean shootFlag = false;
boolean hyperspaceFlag = false;
boolean startFlag = false;
boolean endGameScreenFlag = false;

boolean gameRunningFlag = false;
boolean firstGameFlag = true;

Star stars[] = new Star[500];
ArrayList<Bullet> bullets;
ArrayList<Asteroid> asteroids;

void setup() {
  bullets = new ArrayList<Bullet>();
  asteroids = new ArrayList<Asteroid>();
  
  background(10);
  size(800, 800);
  ship = new Ship();

  for (int i = 0; i < 15; i++) {
    asteroids.add(new Asteroid());
  }

  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  if(firstGameFlag)
  startGameScreen();
}

void draw() {
  if (gameRunningFlag) {
    background(10);
    for (int i = 0; i < stars.length; i++) {
      stars[i].update();
    }
    for (int i = 0; i < 15; i++) {
      asteroids.get(i).move();
      asteroids.get(i).show();
      if (asteroids.get(i).collisionCheck(ship.getX(), ship.getY())) {
        gameRunningFlag = false;
        endGameScreenFlag = false;
      }
    }


    ship.move();
    ship.show();
    if (keyPressed) {
      if (keyCode == LEFT) {
        ship.turn(-10);
      }
      if (keyCode == RIGHT) {
        ship.turn(10);
      }
      if (keyCode == UP) {
        ship.accelerate(0.1);
      }
      if (keyCode == DOWN) {
        ship.accelerate(-0.1);
      }
      if (hyperspaceFlag == false) {
        if (key == 'h' || key == 'H') {
          ship.hyperspace();
          hyperspaceFlag = true;
        }
      }
      if (shootFlag == false) {
        if (key == ' ') {
          shoot();
          shootFlag = true;
        }
      }
    }
  } else {
    if (firstGameFlag) {
      if (startFlag == false) {
        if (key == ' ') {
          gameRunningFlag = true;
          firstGameFlag = false;
          startFlag = true;
        }
      }
    } else {
      if (endGameScreenFlag) {
        if (startFlag == false) {
          if (key == ' ') {
            startFlag = true;
            gameRunningFlag = true;
            setup();
            
          }
        }
      } else {
        endGameScreen();
        endGameScreenFlag = true;
      }
    }
  }
}

void startGameScreen() {
  textAlign(CENTER);
  fill(255);
  textSize(36);
  text("Press Space To Start", 400, 400);
}

void endGameScreen() {
  textAlign(CENTER);
  fill(255);
  text("Game Over!", 400, 400);
  text("Press Space To Play Again", 400, 500);
}

void shoot() {
  bullets.add(new Bullet());
  //bullet.myXspeed = ship.get_mXspeed();
}

void keyReleased() {
  hyperspaceFlag = false;
  shootFlag = false;
  startFlag = false;
}
