void update(){
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