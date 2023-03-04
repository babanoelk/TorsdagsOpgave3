//TaskSeven - ArrayList and arrays

// 7.a Create three ArrayLists that can hold the following types and assign it at least 3 different values to each of them:

// 7.b Write a function that takes an ArrayList of Strings as parameter and prints each String.

void displaySumOfString(ArrayList<String> array) {

  String sum = "";

  for (String k : array) {
    sum = k;
    println(sum);
  }
}

// 7.c Write a function that receives an ArrayList of Integers as a parameter and returns the sum of all elements in the array.

void displaySumOfInt(ArrayList<Integer> array) {
  int sum = 0;
  for (Integer k : array) {
    sum += k;
  }
  println(sum);
}

// 7.d Write a function that receives an ArrayList of Integers as a parameter and returns the average value.

void displayAverage(ArrayList<Integer> array) {
  int sum = 0;
  for (Integer k : array) {
    sum += k;
  }
  println(sum/array.size());
}

/* 7.e Consider how you could write a function that takes an array (not an ArrayList)
 of integers as a parameter and returns a new array of the ints sorted from lowest to highest value. */

int[] newArray1 = {10, 120, 12, 34, 24, 5, 360, 17, 28, 30};

void takeAnArray(int[] arr) {
  arr = sort(arr);
  println(arr);
}

void takeAnArray2(int[] arr) {

  for (int i = 0; i < arr.length; i++) {
    for (int j = 0; j < arr.length; j++) {
      if (arr[i] > arr[j]) {
        arr[i] = arr[j];
        arr[j] = arr[i];
      }
    }
  }
  for (int i : arr) {
    println(arr[i]);
  }
}

void setup() {
  ArrayList<Integer> arrayInt      = new ArrayList();
  arrayInt.add(0);
  arrayInt.add(1);
  arrayInt.add(2);

  ArrayList<String>  arrayString   = new ArrayList();
  arrayString.add("A");
  arrayString.add("B");
  arrayString.add("C");

  ArrayList<Boolean> arrayBoolean  = new ArrayList();
  arrayBoolean.add(false);
  arrayBoolean.add(true);
  arrayBoolean.add(false);

  //displaySumOfString(arrayString); //Prints all strings in the ArrayList
  //displaySumOfInt(arrayInt); //Prints the sum of the integers
  //displayAverage(arrayInt); //Prints the avaerage number of the integers
  //takeAnArray(newArray1);
  takeAnArray2(newArray1);
}
