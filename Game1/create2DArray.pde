float[][] create2DArray(int cols, int rows) {
  float[][] array = new float[cols][];
  for (int i = 0; i < array.length; i++) {
    array[i] = new float[rows];
    for (int j = 0; j < array[i].length; j++) {
      array[i][j] = 0;
    }
  }
  return array;
}