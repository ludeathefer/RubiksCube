void keyPressed() {
  started = true;

  if (key == ' ') {
    startedSeq = true;
  } else if (key == 's' && startedSeq) {
    startedSeqRev = true;
  } else {
    applyMove(key);
  }
}

void applyMove(char _move) {

  switch(_move)
  {
  case 'f':
    move = allMoves[8];
    move.start();
    break;
  case 'F':
    move = allMoves[9];
    move.start();

    break;
  case 'b':
    move = allMoves[11];
    move.start();

    break;
  case 'B':
    move = allMoves[10];
    move.start();

    break;
  case 'u':
    move = allMoves[2];
    move.start();

    break;
  case 'U':
    move = allMoves[3];
    move.start();

    break;
  case 'd':
    move = allMoves[1];
    move.start();

    break;
  case 'D':
    move = allMoves[0];
    move.start();

    break;
  case 'r':
    move = allMoves[4];
    move.start();

    break;
  case 'R':
    move = allMoves[5];
    move.start();
    break;
  case 'l':
    move = allMoves[7];
    move.start();

    break;
  case 'L':
    move = allMoves[6];
    move.start();
    break;
  }
}
