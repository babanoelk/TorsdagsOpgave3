//TaskThree - Leg med tal

// 3.c Add the following array to the global variable.

int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 };
int[] arr1 = { 0, 2, 4, 7, 10, 12 };

// 3.d Write a method, getRandom() that returns a random element from the above array.

int getRandom(int[] arr) {
  int i = (int)random(0, arr.length);
  return(arr[i]);
}

/* 3.a Write a method 'divisible', that takes in an integer as a parameter and prints all values between 0 and 100
 that are divisible by the parameter received. */

void divisible(int input) {

  int[] input1 = new int[101];

  for (int i = 0; i < input1.length; i++) {
    input1[i] = i;

    if (input1[i] % input == 0) {
      println(i + " is divisible");
    }
  }
}

/* 3.e Write a function that takes an integer as a parameter and prints the number. After that, it subtracts one from the
 input and calls itself again (recursion). If the input is less than zero, it should no longer call itself. */

void printUntilZero(int input) {
  while (input > 0) {
    println(input);
    input -= 1;
  }
}

void setup() {

  //3.b Call the method from setup() to see if it works.
  //divisible(2);
  //printUntilZero(60);
  println(getRandom(arr1));
}
