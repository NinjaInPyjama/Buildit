class Field implements CONSTANTS {
  private color _color = COL_GRASS;
  
  private float _x;
  private float _y;
  private float _size = FIELDSIZE;
  
  public Field(float x, float y) {
    _x = x;
    _y = y;
  }
  
  public void draw() {
    fill(_color);
    stroke(0);
    strokeWeight(1);
    rect(_x, _y, _size, _size);
  }
}
