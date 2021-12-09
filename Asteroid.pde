  class Asteroid extends Floater{
  private double turnSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[] {-11,7,13,6,-11,-5};
    yCorners = new int[] {-8,-8,0,10,8,0};
    for(int i = 0 ; i < xCorners.length ; i++){
      xCorners[i] = (int)(Math.random()*5 + xCorners[i]);
      yCorners[i] = (int)(Math.random()*5 + yCorners[i]);
      myXspeed = Math.random()*20-10;
      myYspeed = Math.random()*20-10;
    }
    myCenterX = Math.random()*800; myCenterY = Math.random()*800;
    myXspeed = Math.random()*1-0.5 ; myYspeed = Math.random()*1-0.5;
    myPointDirection = 0;
    turnSpeed = Math.random()*2-1;
  }
  public void show(){
    fill(0);
    stroke(255);
    turn(turnSpeed);
    super.show();
  }
  
  public boolean collisionCheck(double x, double y){
    if(dist((float)x, (float)y, (float)myCenterX, (float)myCenterY) >= 20){
      return false;
    }
    return true;
  }
}
