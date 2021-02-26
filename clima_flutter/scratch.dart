import 'dart:io';

void main() {
  String str = stdin.readLineSync();
  print('str');
  print(str);
  // performTasks();
}

void performTasks() async{
  task1();
  String r = await task2();
  task3(r);
}

void task1() {
  String result = 'task 1data';
  print('task 1 com');
}

Future task2() async {
  Duration sec = Duration(seconds: 3);
  String result;
  await Future.delayed(sec, () {
    result = 'task 2data';
    print('task 2 com');
  });

  return result;
}

void task3(String r) {
  String result = 'task 3data';
  print('task 3 com $r');
}


