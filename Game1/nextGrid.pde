
void nextGrid() {
  int[][] nextGrid = create2DArray(cols, rows);

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      int state = grid[i][j];
      if (state == 1) {
        int below = j + 1;

        if (below < rows && grid[i][below] == 0) {
          nextGrid[i][below] = 1;
        } else {
          int dir = random(1) < 0.5 ? 1 : -1;
          int diag1 = i + dir;
          int diag2 = i - dir;

          if (below < rows && diag1 >= 0 && diag1 < cols && grid[diag1][below] == 0
              && nextGrid[diag1][below] == 0) {
            nextGrid[diag1][below] = 1;

          } else if (below < rows && diag2 >= 0 && diag2 < cols && grid[diag2][below] == 0
              && nextGrid[diag2][below] == 0) {
            nextGrid[diag2][below] = 1;

          } else {
            nextGrid[i][j] = 1;
          }
        }
      }
    }
  }
  grid = nextGrid;
}