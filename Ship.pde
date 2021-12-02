public class Ship extends Floater{
  private boolean hyperspaceFlag;
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
  
}
