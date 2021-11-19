public class Ship extends Floater{
  private boolean hyperspaceFlag;
  private boolean bulletFlag;
  ArrayList<Bullet> bullets = new ArrayList<Bullet>();
  
  public Ship(){
    corners = 4;
    xCorners = new int[] {15, -10, -5, -10};
    yCorners = new int[] {0, 10, 0, -10};
    myCenterX = 250; myCenterY = 250;
    myXspeed = 0 ; myYspeed = 0;
    myPointDirection = 0;
    myColor = 255;
    hyperspaceFlag = false;
  }
  
  public void hyperspace(){
    myCenterX = (int)(Math.random()*801);
    myCenterY = (int)(Math.random()*801);
    myPointDirection = Math.random()*360;
    myXspeed = 0;
    myYspeed = 0;
  }
  
  public void shoot(){
    //new Bullet(myCenterX, myCenterY, myPointDirection, myXspeed, myYspeed);
      for(int i = 0 ; i < bullets.size() ; i++){
    bullets.get(i).move();
    bullets.get(i).show();
  }
  }
  
  public boolean getHyperspaceFlag(){
    return hyperspaceFlag;
  }
  
  public void setHyperspaceFlag(boolean b){
    hyperspaceFlag = b;
  }
  
    public boolean getBulletFlag(){
    return bulletFlag;
  }
  
  public void setBulletFlag(boolean b){
    bulletFlag = b;
  }

}
