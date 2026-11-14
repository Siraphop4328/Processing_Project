
void nextGrid(){

int[][] nextGrid = create2DArray(cols, rows);
    for(int i = 0; i < cols; i++){
        for(int j = 0; j < rows; j++){
            int state = grid[i][j];
            if(state == 1){
                if (j < rows - 1 && grid[i][j + 1] == 0){
                    nextGrid[i][j + 1] = 1;
                }
                else{
                    nextGrid[i][j] = 1;
                }
                
            }
        }
    }
    grid = nextGrid;
}