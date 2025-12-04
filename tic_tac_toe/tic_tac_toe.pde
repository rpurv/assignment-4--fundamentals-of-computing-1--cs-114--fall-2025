void setup() {
  size(500, 500);
  initBoard();
  println("Computer goes first...");
  computerMove();
}

void draw() {
  background(255);
  drawBoard();
  drawMarks();
}

void keyPressed() {
  if (gameOver) {
    println("Game has ended. No more moves allowed.");
    return;
  }

  // Check key
  if (key < '0' || key > '8') {
    println("Invalid key pressed. Please press a number 0–8.");
    return;
  }

  int square = key - '0';

  // Check if the square can be used
  if (board[square] != EMPTY) {
    println("Square already filled.");
    return;
  }

  // Player's turn
  board[square] = O_PLAYER;

  if (checkWin(O_PLAYER)) {
    println("You (O) win!");
    gameOver = true;
    return;
  }

  if (isBoardFull()) {
    println("No one has won.");
    gameOver = true;
    return;
  }

  // Computer's turn
  computerMove();

  if (checkWin(X_PLAYER)) {
    println("Computer (X) wins!");
    gameOver = true;
    return;
  }

  if (isBoardFull()) {
    println("No one has won.");
    gameOver = true;
    return;
  }

  println("Game still in play...");
}
