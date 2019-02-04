main(List<String> args) {
  
  bool running = true;
  int counter = 0;
  
  // while loop
  while (running) {
    counter++;

    if(counter == 4) continue;

    print("While counter = $counter");

    if(counter ==5) 
      break;
  }

  counter = 0;

  do {
    counter++;

    if(counter == 2) continue;
    print("Do counter = $counter");

    if(counter >= 5)
      break;

  } while (running);

  counter = 0;

  List<String> list = new List<String>();
  list.add("Bryan");
  list.add("Heather");
  list.add("Chris");

  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }

  while(counter < list.length) {
    print("$counter is " + list[counter]);
    counter++;
  }
}