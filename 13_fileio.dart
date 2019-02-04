import 'dart:io';
import 'dart:convert';

main(List<String> args) {
  String path = '/Users/jersanbalago/Desktop/flutters';
  String txt_file = "$path/test.txt";
  String txt_json = "$path/json.txt";

  if(writeFile(txt_file, "Hello World \nJersan\n", FileMode.APPEND)) {
    print(readFile(txt_file));

    List<String> list = readLines(txt_file);
    print(list.length);
  }

  if(writeJSON(txt_json)) readJSON(txt_json);
}

void list(String path) {
  try {
    Directory root = new Directory(path);
    if(root.existsSync()) {
      for(FileSystemEntity f in root.listSync()) {
        print(f.path);
      }
    }
  } catch (e) {
    e.toString();
  }
}

bool writeFile(String file, String data, FileMode mode) {
  try {
    File f = new File(file);
    RandomAccessFile rf = f.openSync(mode: mode);
    rf.writeStringSync(data);
    rf.flushSync(); 
    rf.closeSync(); // may call flush
    return true;
  } catch (e) {
    e.toString();
    return false;
  }
}

String readFile(String file) {
  try {
    File f = new File(file);
    return f.readAsStringSync();
  } catch (e) {
    e.toString();
    return "";
  }
}

List<String> readLines(String file) {
  try {
    File f = new File(file);
    return f.readAsLinesSync();
  } catch (e) {
    e.toString();
  }
}

bool writeJSON(String file) {
  Map<String, int> map = new Map<String, int>();
  map.putIfAbsent("Bryan", () => 43);
  map.putIfAbsent("Heather", () => 25);

  String data = json.encode(map);
  return writeFile(file, data, FileMode.write);
}

void readJSON(String file) {
  String data = readFile(file);
  if(data.isEmpty) {
    print("No data.");
    return;
  }

  Map<String, dynamic> people = json.decode(data);
  print("People Object: ");
  people.forEach((key, value) {
    print("$key is $value");
  });
}
