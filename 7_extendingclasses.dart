main(List<String> args) {
  lion lion1 = new lion();
  lion1.roar();
  lion1.test();
}

class mamal {
  bool hasBackbone() => true;
  bool hasHair() => false;
}

class feline extends mamal {
  void test() {
    print("feline testing");
  }
}

class lion extends feline {
  void roar() => print("lion roaring...");

  void test() {
    super.test();
    print("lion testing");

    if(hasBackbone()) {
      print("Has backbone");
    }
  }
}