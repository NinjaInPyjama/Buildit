class Game implements CONSTANTS {
  World _world;
  
  public Game() {
    _world = new World(100,100);
  }
  
  
  public void run() {
    _world.move();
    _world.draw();
  }
  
}
