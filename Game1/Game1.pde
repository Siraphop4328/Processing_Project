
int w = 5;
int cols, rows;
int[][] grid = create2DArray(cols, rows);


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


void setup(){
    size(1200, 800);

    cols = width / w;
    rows = height / w;

    grid = create2DArray(cols, rows);

    grid[20][20] = 1;

}

void draw(){
    background(0);

   
    for(int i = 0; i < cols; i++){
        for(int j = 0; j < rows; j++){
            stroke(255);
            strokeWeight(0.1);
            fill(grid[i][j]*255);
            int x = i * w;
            int y = j * w;
            square(x, y, w);
        }
    }

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



