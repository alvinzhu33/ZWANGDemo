public class Star implements Blockable{
  float y;
  boolean exist;

  public Star(float y) {
    this.y = y;
    exist = true;
  }

  public void display() {
    noStroke();
    if (exist) {
      fill(255);
      for (int i=0; i<360; i+=72) {
        pushMatrix();
        translate(200, y);
        rotate(radians(i));

        beginShape();
        triangle(-6, -8, 0, -18, 6, -8);
        triangle(-6, -8, 0, 0, 6, -8);
        endShape();

        popMatrix();
      }
    }
  }

  public float getY() {
    return y;
  }

  public boolean status() {
    return exist;
  }

  public void destroy() {
    if (exist) {
      exist=false;
      fill(0);
      ellipse(200, y, 20, 20);
    }
  }
  
  public void move(){
     y+=.75;
   }
}