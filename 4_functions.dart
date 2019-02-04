main(List<String> args) {
  printNumbers(5);
  print(createName("Jersan", "Balago"));
  print(addTwoNumbers(3));
}

void printNumbers(int num) {
  for (int i = 0; i < num; i++) {
    print("i is $i");
  }
}

String createName(String first, String last) {
  return "My name is $first $last";
}

// Default parameter values
int addTwoNumbers(int c, [int a = 2, int b = 1]) {
  return a + b + c;
}
