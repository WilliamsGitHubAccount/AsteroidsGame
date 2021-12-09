class Star{
  private double x, y;
  private int size;
  Star(){
    x = Math.random()*800;
    y = Math.random()*800;
    size = (int)(Math.random()*4)+3;
  }
  void update(){
      noStroke();
      fill(255);
    ellipse((float)x, (float)y, size, size);
  }

}
