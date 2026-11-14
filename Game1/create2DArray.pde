int[][] create2DArray(int cols, int rows){

    int[][] array = new int[cols][];
    for (int i = 0; i < array.length; i++){
        array[i] = new int[rows];
        for (int j = 0; j < array[i].length; j++){
            array[i][j] = 0;
        }
    }
    return array;
}