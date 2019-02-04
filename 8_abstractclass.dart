main(List<String> args) {
  Lion lion = new Lion();
  lion.speak();

  Monster babduk = new Monster();
  babduk.speak();
}

abstract class Mamal {
  bool hasBackbone();
  bool hasHair();
  void speak() => print("hello mamal");
}

abstract class Feline extends Mamal {
  bool hasClaws();
}

class Lion extends Feline {
  @override
  bool hasHair() {
    return true;
  }

  @override
  bool hasBackbone() {
    return true;
  }

  @override
  bool hasClaws() {
    return true;
  }

  @override
  void speak() {
    //super.speak();
    print("Lion speaks...");
  }
}

abstract class Bird {
  bool hasWings();
}

abstract class Scorpion {
  bool hasStinger();
}

// Interfaces example
class Monster implements Bird, Feline, Scorpion {
  @override
  bool hasStinger() {
    return true;
  }

  @override
  bool hasHair() {
    return true;
  }

  @override
  bool hasWings() {
    return true;
  }

  @override
  bool hasBackbone() {
    return true;
  }

  @override
  bool hasClaws() {
    return true;
  }

  @override
    void speak() {
      print("Monster speaks...");
    }
}
