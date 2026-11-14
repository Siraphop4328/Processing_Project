
void nextGrid() {

  boolean leftToRight = (frameCount % 2 == 0);

  for (int j = rows - 2; j >= 0; j--) {
    for (int k = 0; k < cols; k++) {
      int i = leftToRight ? k : (cols - 1 - k);
      float state = grid[i][j];
      if (state > 0) {
        int below = j + 1;

        if (grid[i][below] == 0) {
          grid[i][below] = state;
          grid[i][j] = 0;
        } else {
          int dir = random(1) < 0.5 ? 1 : -1;
          int diag1 = i + dir;
          int diag2 = i - dir;

          if (diag1 >= 0 && diag1 < cols && grid[diag1][below] == 0){
            grid[diag1][below] = state;
            grid[i][j] = 0;

          } else if (diag2 >= 0 && diag2 < cols && grid[diag2][below] == 0) {
            grid[diag2][below] = state;
            grid[i][j] = 0;

          } 
        }
      }
    }
  }
}

