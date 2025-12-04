void drawBoard() {
  stroke(0);
  strokeWeight(4);

  // Vertical 
  line(width/3, 0, width/3, height);
  line(2*width/3, 0, 2*width/3, height);

  // Horizontal 
  line(0, height/3, width, height/3);
  line(0, 2*height/3, width, 2*height/3);
}

void drawX(float x, float y, float size) {
  stroke(0);
  strokeWeight(8);
  float s = size / 3;

  line(x - s, y - s, x + s, y + s);
  line(x - s, y + s, x + s, y - s);
}

void drawO(float x, float y, float size) {
  stroke(0);
  strokeWeight(8);
  noFill();
  ellipse(x, y, size, size);
}

void drawMarks() {
  float cellW = width / 3;
  float cellH = height / 3;

  for (int i = 0; i < 9; i++) {
    float cx = (i % 3) * cellW + cellW/2;
    float cy = (i / 3) * cellH + cellH/2;

    if (board[i] == X_PLAYER)
      drawX(cx, cy, 100);
    else if (board[i] == O_PLAYER)
      drawO(cx, cy, 100);
  }
}
