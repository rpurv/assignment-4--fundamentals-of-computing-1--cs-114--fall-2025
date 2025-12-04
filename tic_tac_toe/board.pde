// Create board array
void initBoard() {
  for (int i = 0; i < 9; i++) {
    board[i] = EMPTY;
  }
}

// Check if all 9 squares are filled
boolean isBoardFull() {
  for (int i = 0; i < 9; i++) {
    if (board[i] == EMPTY) return false;
  }
  return true;
}

// Check for a winner
boolean checkWin(int player) {
  for (int[] line : WIN_LINES) {
    if (board[line[0]] == player &&
        board[line[1]] == player &&
        board[line[2]] == player) {
      return true;
    }
  }
  return false;
}

// Computer's turn
void computerMove() {
  if (gameOver) return;

  for (int i = 0; i < 9; i++) {
    if (board[i] == EMPTY) {
      board[i] = X_PLAYER;
      println("Computer chose square: " + i);
      return;
    }
  }
}
