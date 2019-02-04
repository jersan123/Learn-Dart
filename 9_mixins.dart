main(List<String> args) {
  Suv jeep = new Suv();
  jeep.honkHorn();
  jeep.playMusic();
  print(jeep.doors());
  print(jeep.color());
}

class Car {
  int doors() => 4;
  String color() => "black";

  void playMusic() {
    for (var i = 0; i < 3; i++) {
      print("boom!");
    }
  }
}

class Truck {
  bool has4x4() => true;
  bool hasBed() => true;
  int doors() => 2;
  String color() => "red";

  void honkHorn() {
    print("HONK");
  }
}

class Suv extends Truck with Car {

}