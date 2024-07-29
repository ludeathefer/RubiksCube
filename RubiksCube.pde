import peasy.*;

int dim = 3;
Cubies[] cube = new Cubies[dim * dim * dim];
String[] moveName = {"f", "b", "r", "l", "u", "d"};
char moveSeq;
String sequence = "";
String sequenceRev = "";
boolean started = false;
boolean startedSeq = false;
boolean startedSeqRev = false;
int counterSeq = 0;
int counterSeqRev = 0;

Move[] allMoves = new Move[]{
  new Move(0, 1, 0, 1), //D'--0
  new Move(0, 1, 0, -1), //D--1
  new Move(0, -1, 0, 1), //U--2
  new Move(0, -1, 0, -1), //U'--3
  new Move(1, 0, 0, 1), //R--4
  new Move(1, 0, 0, -1), //R'--5
  new Move(-1, 0, 0, 1), //L'--6
  new Move(-1, 0, 0, -1), //L--7
  new Move(0, 0, 1, 1), //F--8
  new Move(0, 0, 1, -1), //F'--9
  new Move(0, 0, -1, 1), //B'--10
  new Move(0, 0, -1, -1), //B--11
};

Move move = allMoves[0];
PeasyCam cam;

void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 600);

  for (int x = -1; x <=1; x++) {
    for (int y = -1; y <=1; y++) {
      for (int z = -1; z <=1; z++) {
        PMatrix3D matrix = new PMatrix3D();
        matrix.translate(x, y, z);
        cube[index] = new Cubies(matrix, x, y, z);
        index++;
      }
    }
  }
  for (int i = 0; i<15; i++) {
    int r = int(random(moveName.length));
    if (random(1)<0.5) {
      sequence+=moveName[r];
    } else {
      sequence+=moveName[r].toUpperCase();
    }
  }

  println(sequence);

  for (int i = sequence.length() -1; i>=0; i--) {
    String nextMove =  flipCase(sequence.charAt(i));
    sequenceRev += nextMove;
  }
}
String flipCase(char c) {
  String s = ""+c;
  if (s.equals(s.toLowerCase())) {
    return s.toUpperCase();
  } else
    return s.toLowerCase();
}

void draw() {
  background(50);
  rotateX(-0.5);
  rotateY(0.5);
  rotateZ(0.2);

  if (started) {
    if (frameCount % 20 == 0) {

      if (startedSeq) {
        if (counterSeq<sequence.length()) {
          moveSeq = sequence.charAt(counterSeq);
          applyMove(moveSeq);
          counterSeq++;
        }
      }
    }

    if (frameCount % 20 == 0) {
      if (startedSeqRev) {
        if (counterSeqRev<sequenceRev.length()) {
          moveSeq = sequenceRev.charAt(counterSeqRev);
          applyMove(moveSeq);
          counterSeqRev++;
        }
      }
    }
    move.update();
  }

  scale(50);
  for (int i = 0; i < cube.length; i++) {
    push();
    if (abs(cube[i].z)>0 && cube[i].z == move.z) {
      rotateZ(move.angle);
    } else if (abs(cube[i].x)>0 && cube[i].x == move.x) {
      rotateX(move.angle);
    } else if (abs(cube[i].y)>0 && cube[i].y == move.y) {
      rotateY(-move.angle);
    }
    cube[i].show();
    pop();
  }
}
