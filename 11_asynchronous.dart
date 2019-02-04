import 'dart:async';

main(List<String> args) {
  // testAsync();
  // testThen();
  // testChain();
  testMultiple();
}

Future<bool> longwait(String prefix) async {
  for(int i = 0; i < 5; i++) {
    print("$prefix $i");
  }
  return true;
}

Future testAsync() async {
  print("starting");
  bool ret = await longwait("Async");
  print(ret);
  print("done");
}

void testThen() {
  print("starting");
  longwait("Then").then((bool value) {
    print("done waiting");
  });
  print("done");
}

void testChain() {
  print("starting");
  Future f = longwait("Chains");
  f.then((value) {
    print("done chain 1");
  }).then((value) {
    print("done chain 2");
  }).then((value) {
    print("done chain 3");
  });
  print("done");
}

Future testMultiple() async {
  print("starting");

  Future f1 = longwait("one");
  Future f2 = longwait("two");
  Future f3 = longwait("three");

  await Future.wait([f1, f2, f3]);

  print("done");
}