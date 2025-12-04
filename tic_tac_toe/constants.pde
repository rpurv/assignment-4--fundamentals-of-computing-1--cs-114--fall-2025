// Player constants
final int EMPTY = 0;
final int X_PLAYER = 1;  // computer
final int O_PLAYER = 2;  // user

// Board size
int[] board = new int[9];
boolean gameOver = false;

// Winning lines
int[][] WIN_LINES = {
  {0,1,2},
  {3,4,5},
  {6,7,8},
  {0,3,6},
  {1,4,7},
  {2,5,8},
  {0,4,8},
  {2,4,6}
};
