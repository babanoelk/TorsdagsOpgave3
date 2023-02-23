//TaskTwo - Print en delmængde af et ord

/* I denne opgave skal du brug substring metoden fra klassen String.
 
 2.a Lav en metode, printPartOfWord(), med tre parametre: 1. parameter er ordet, 2. parameter er index for det
 bogstav delmængden starter med og 3. parameter er længden på delmængden. Metoden skal printe en delmængde
 af ordet, der kommer ind som 1. parameter. Ex: argumenterne "København", 1 og 4 skal give outputtet "øben". */

void setup() {

  //2.b Kald metoden fra setup() med passende argumenter og se om den virker.
  printPartOfWord("København", 0, 5);
  //printPartOfWord1("København", 3,4);
}
void printPartOfWord1(String input, int input1, int input2) {
  String newWord = "";

  for (int i = input1; i <= input2; i++) {
    newWord = newWord + input.charAt(i);
  }
  println(newWord);
}

void printPartOfWord(String input, int input1, int input2) {
  String newWord = input.substring(input1, input2 + input1);
  println(newWord);
}
