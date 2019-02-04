import '4_functions.dart' as Functions;

main(List<String> args) {
  
  List<int> list = new List<int>();
  list.add(1);
  list.add(2);
  list.add(3);

  print("As an object.");
  list.forEach(asObject);

  print("As an anonymous function");
  list.forEach((i) {
    print(i);
  });

  print("External Function");
  Functions.createName("Balago", "Jersan");
  
}

void asObject(int i ){
  print(i);
}