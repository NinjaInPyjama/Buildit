class World implements CONSTANTS {
  private final float _offsetX = 0.0;//4*FIELDSIZE;
  private final float _offsetY = 0.0;//4*FIELDSIZE;
  private final float _sizeX;
  private final float _sizeY;
  
  private final float _moveBoundary = MOVE_BOUNDARY_FACTOR*width;
  private final float _moveSpeed = 100*MOVE_SPEED_FACTOR*width;
  private float _posX = 0.0;
  private float _posY = 0.0;
  
  private final int _fieldNumX;
  private final int _fieldNumY;
  private ArrayList<Field> _fields = new ArrayList<Field>();
  
  public World(int fieldNumX, int fieldNumY) {
    _sizeX = 2*_offsetX + fieldNumX*FIELDSIZE;
    _sizeY = 2*_offsetY + fieldNumY*FIELDSIZE;
    
    _fieldNumX = fieldNumX;
    _fieldNumY = fieldNumY;
    
    initalize();
  }
  
  private void initalize() {
    for(int i=0; i< _fieldNumX; i++) for(int j=0; j< _fieldNumY; j++) _fields.add(new Field(_offsetX+i*FIELDSIZE, _offsetY+j*FIELDSIZE));
  }
  
  public void draw() {
    pushMatrix();
    translate(-_posX,-_posY);
    for(Field f:_fields) f.draw();
    noFill();
    stroke(0);
    strokeWeight(3);
    rect(_moveBoundary,_moveBoundary,width-2*_moveBoundary, height-2*_moveBoundary);
    popMatrix();
  }
  
  public void move() {
    if(mouseX < _moveBoundary && _posX > 0) _posX = max(0, _posX - _moveSpeed);
    else if(mouseX > width - _moveBoundary && _posX < _sizeX - width) _posX = min(_sizeX, _posX + _moveSpeed);
  }
}
