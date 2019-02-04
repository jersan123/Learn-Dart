
main(List<String> args) {
  
  House house1 = new House("Jersan");
  House house2 = new House("Balago");

  List<House> houses = new List<House>();
  houses.add(house1);
  houses.add(house2);
  
  houses.forEach((value) {
    print(value.name);
  });
  
}

class House {

  String name;
  
  House(String name) {
    this.name = name;
  }

  // private variable
  int _age = 0;

  // setter
  set yearsold(int age) => _age = age;

  // public variables
  String color = "white";
  int width = 10;
  int height = 5;

  // getter
  int get footage => height * width;
  int get yearsold => _age;
}
