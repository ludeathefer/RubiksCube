class Cubies {
  PMatrix3D matrix;
  int x = 0;
  int y = 0 ;
  int z = 0;
  color c;
  Face[] faces = new Face[6];

  Cubies(PMatrix3D m, int x, int y, int z) {
    matrix = m;
    this.x = x;
    this.y = y;
    this.z = z;
    c = color(255);

    faces[0] = new Face(new PVector(0, 0, -1), color(0, 0, 255));
    faces[1] = new Face(new PVector(0, 0, 1), color(0, 255, 0));
    faces[2] = new Face(new PVector(0, 1, 0), color(255, 255, 255));
    faces[3] = new Face(new PVector(0, -1, 0), color(255, 255, 0));
    faces[4] = new Face(new PVector(1, 0, 0), color(255, 150, 0));
    faces[5] = new Face(new PVector(-1, 0, 0), color(255, 0, 0));
  }

  void turnfacesZ(int dir) {
    for (Face f : faces) {
      f.turnZ(HALF_PI*dir);
    }
  }

  void turnfacesX(int dir) {
    for (Face f : faces) {
      f.turnX(HALF_PI*dir);
    }
  }

  void turnfacesY(int dir) {
    for (Face f : faces) {
      f.turnY(HALF_PI*dir);
    }
  }


  void update(int x, int y, int z) {
    matrix.reset();
    matrix.translate(x, y, z);
    this.x = x;
    this.y = y;
    this.z = z;
  }

  void show() {
    noFill();
    stroke(0);
    strokeWeight(0.1);
    pushMatrix();
    applyMatrix(matrix);
    box(1);
    for (Face f : faces) {
      f.show();
    }
    popMatrix();
  }
}
