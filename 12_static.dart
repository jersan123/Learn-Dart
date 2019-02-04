main(List<String> args) {
  Counter.printCount();
  Counter.increase();
  Counter.increase();
  Counter.printCount();

  Counter obj = new Counter();
  obj.addTen();

  print(obj.count);
}

class Counter {
  static int _count = 0;

  int get count => _count;
  void set count(int value) => _count = value;

  static void increase() => _count++;
  static void decrease() => _count--;

  void addTen() => _count += 10;
  void removeTen() => _count -= 10;

  static void printCount() => print(_count);
}