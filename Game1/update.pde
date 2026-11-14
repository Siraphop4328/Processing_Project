void update() {
  noStroke();
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      

      if (grid[i][j] > 0) {
        fill(grid[i][j], saturationValue, 200);
        int x = i * w;
        int y = j * w;
        square(x, y, w);
      }
    }
  }
}