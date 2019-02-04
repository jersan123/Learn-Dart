main(List<String> args) {
  Stray fido = new Stray();
  Trainer<Stray> bob = new Trainer();
  bob.add(fido);
  bob.train();
  bob.remove(fido);
}

String addString(String value) {
  return value + " is a text";
}

int addInt(int value) {
  return value + 1;
}

void log<T> (T value) {
  print(value);
}

T add<T extends num> (T value) {
  return value + 1;
}

class Trainer<T> {
  List<T> _animals = new List<T>();

  void add(T value) => _animals.add(value);
  void remove(T value) => _animals.remove(value);

  void train() {
    _animals.forEach((value) {
      for(int i = 0; i < 3; i++) {
        value.speak();
      }
    });
  }
}

class Dog {
  void speak() {
    print("Woof!..."); 
  }
}

class Stray extends Dog {
  
}