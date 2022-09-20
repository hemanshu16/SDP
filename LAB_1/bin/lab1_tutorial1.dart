import 'package:lab1_tutorial1/lab1_tutorial1.dart' as lab1_tutorial1;
import "dart:io";

void main(List<String> arguments) {
  print('Hello world: ${lab1_tutorial1.calculate()}!');
}

// void main() {
//   print('hello world');
// }

//Output: on console 'hellow world'*/

void main() {
  int i;
  for (i = 0; i < 5; i++) print("hello ${i + 1}");
}

//Output:    hello 1
// hello 2
// hello 3
// hello 4
// hello 5

void main() {
  stdout.write('without new line ');
  print('Calling calculate function');
  print(calculate());
}

//Output: without new line Calling calculate function
//        42
