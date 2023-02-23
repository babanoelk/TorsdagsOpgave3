//TaskFour - Fibonacci

/* 4.a Write a method, fibonacci() that takes two integers as parameters and prints the first of them. Each printed value
 should followed by a tab ( \t ). Then have the function calculate and print the fibunacci sequence (0, 1, 1, 2, 3, 5, 8, 13,
 21, 34, 55, 89, 144) by calling itself. If the input is greater than 1000, then stop. Start the function by calling it from
 main with the input (1, 1). */

void setup() {

  fibonacci(1, 1);
}

void fibonacci(int input1, int input2) {

  print(input1 + "\t");

  int sum = input1 + input2;

  input1 = input2;
  input2 = sum;

  if (input1 < 1000) {
    fibonacci(input1, input2);
  }
}
