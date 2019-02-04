main(List<String> args) {
  
  // var - something that will change
  var something = "hello world";
  something = "cats rule";

  // cons / final - never change
  const nope = 1;

  // Numbers
  num age = 12;
  age += 30;

  double pi = 3.14;
  int cats = 1;

  // Boolean
  bool isWorking = false;

  // Strings
  String title = "HELLO World";
  print(title.substring(0,4));
  
  String newTitle = title.replaceAll('LL', 'zz');
  print(newTitle);

  String book = "My world's issues in\n a day";
  print(book);

  String names = "Bryan, Heather, Chris, Karl";
  List<String> list = names.split(", ");
  
  list.add("Bob");
  list.insert(1, "Ford");
  print(list);

  print(list.indexOf("Karl"));

  list.forEach((name){
    print(name);
  });

  // MAPS - bit different
  Map<String, int> ages = {
    "Bryan": 43,
    "Heather": 24,
    "Karl": 47,
  };

  print(ages.keys);
  print(ages.values);

  print(ages["Bryan"]);
  print(ages.keys.elementAt(0));

  ages["Mark"] = 50;
  
  ages.forEach((k, v) {
    print("$k is $v years old!");
  });
}