class Move {
  float angle = 0;
  int x = 0 ;
  int y = 0;
  int z = 0;
  int dir ;
  boolean animating;

  Move(int x, int y, int z, int dir) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.dir = dir;
  }

  void start() {
    animating = true;
  }

  boolean finished() {
    return finished;
  }

  void update() {
    if (animating) {
      angle += dir*0.1;
      if (abs(angle)> HALF_PI) {
        angle = 0;
        animating = false;
        if (abs(z)>0) {
          turnZ(move.z, move.dir);
        } else if (abs(y)>0) {
          turnY(move.y, move.dir);
        } else if (abs(x)>0) {
          turnX(move.x, move.dir);
        }
      }
    }
  }
}
