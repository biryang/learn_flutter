import 'dart:io';

void main() {
  performTasks();
}

void performTasks() {
  task1();
  task2();
  task3();
}

void task1() {
  String result = 'task 1data';
  print('task 1 com');
}

void task2() {
  Duration sec = Duration(seconds: 3);
  Future.delayed(sec, () {
    String result = 'task 2data';
    print('task 2 com');
  });
}

void task3() {
  String result = 'task 3data';
  print('task 3 com');
}
