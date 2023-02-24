//TaskOne

void setup() {

  //1.c Kald metoden fra setup() med argumentet "Den laks skal ned", for at teste den.
  printIfPalindrome("regninger");
}

/* 1.a - Skriv en metode printlfPalindrome() som tager en tekststreng som argument og printer den hvis den kan skrives bagfra
 uden at ændre sig. */

void  printIfPalindrome(String in) {
  String canItBeWrittenFromBehind = "";

  for (int i = 0; i < in.length(); i++) {
    canItBeWrittenFromBehind = in.charAt(i) + canItBeWrittenFromBehind;
  }

  //1.b Sørg for at metoden ikke er case-sensitiv.

  if (in.equalsIgnoreCase(canItBeWrittenFromBehind)) {
    println(canItBeWrittenFromBehind.toLowerCase());
  } else {
    println("Is not an Palindrome!");
  }
}
