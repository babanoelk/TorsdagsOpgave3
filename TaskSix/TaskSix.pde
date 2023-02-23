//TaskSix - Draw a chess board using a nested for loop and a double int array.

/* In this task you will create an integer array with 2 dimensions, that holds values of 0, 1, 0, 1, etc. The instructions
 below will help you get started.
 
 6.a Create a double int called board[][] with the length of 8 in both arrays. */

int[][] board = new int[8][8];

/* 6.b - In setup() create a double for loop that loops through the board and alternates between assigning the
 value of 0 and 1 (e.g. board[x][y] = 0;)*/

void setup() {
  size(8*40, 8*40);

  int counter = 0;

  for (int i = 0; i < board.length; i++) {
    for (int k = 0; k < board[i].length; k++) {
      board[i][k] = counter % 2 ;
      //println(counter);
      counter += 1;
    }
    counter += 1;
  }

  //For at printe pladserne ud og tjekke dem.
  /*for (int i = 0; i < board.length; i++) {
   for (int k = 0; k < board[i].length; k++) {
   print(board[i][k]);
   }
   println();
   }
   */
}

void draw() {

  /* 6.c - In draw() create a double for loop that loops through the board and draws a rect for each element with the
   sideLength of 40 (e.g. rect(x * sideLength, y * sideLength, sideLength, sideLength); ) */

  int sideLength = 40;
  for (int i = 0; i < board.length; i++) {
    for (int k = 0; k < board[i].length; k++) {
      
      /* 6.d Before drawing the rect in the previous step, add a fill() statement, that fills with the 
      value of 0 if the board[x][y] == 0 and 255 if the the board[x][y] == 1. */ 
      
      if (board[i][k] == 0) {
        fill(0);
      } else {
        fill(255);
      }
      rect(i*sideLength, k*sideLength, sideLength, sideLength);
    }
  }
}
