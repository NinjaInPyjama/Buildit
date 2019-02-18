Game game;

void setup() {
  size(1250, 1250);
  game = new Game();
}

void draw() {
  background(255);
  game.run();
}
