
int w = 5;
int cols, rows;
int[][] grid = create2DArray(cols, rows);


int[][] create2DArray(int cols, int rows){
    return new int[cols][rows]; 
}


void setup(){
    size(800, 800);

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

    
}



