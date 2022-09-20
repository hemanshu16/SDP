import 'package:tutorial_3_1/tutorial_3_1.dart' as tutorial_3_1;

void main(List<String> arguments) {
  // print('Hello world: ${tutorial_3_1.calculate()}!');

  /// Mini-exercies-1
  // int counter = 0;
  // while (counter < 10) {
  //   print("Counter is $counter.");
  //   counter++;
  // }

  /// Output
  // Counter is 0.
  // Counter is 1.
  // Counter is 2.
  // Counter is 3.
  // Counter is 4.
  // Counter is 5.
  // Counter is 6.
  // Counter is 7.
  // Counter is 8.
  // Counter is 9.

  /// Mini - exercise - 2
  // for (int i = 1; i <= 10; i++) {
  //   print(i);
  // }

  /// Mini - exercise -3
  // const numbers = [1, 2, 4, 7];
  // for (var num in numbers) {
  //   print(num * num);
  // }
  /// Output
  // 1
  // 4
  // 16
  // 49

  /// Mini - exercise-4
  // const numbers = [1, 2, 4, 7];
  // numbers.forEach((number) {
  //   print(number * number);
  // });
  /// Output
  // 1
  // 4
  // 16
  // 49

  /// Challenges
  /// Challenge 1 : Find The Error
  // const firstName = 'Bob';
  // if(firstName == 'Bob')
  // {
  //  const lastName = 'Smith';
  // }
  // else if (firstName == 'Ray')
  // {
  //  const lastName = 'Wenderlich';
  // }
  /// Here error is that lastName variable declaration is inside block scope is it not accessible to outside if.

  ///Challenge 2 : Boolean Challenge
  // 1) true && true false || false
  // 2) (true && 1 !=2 ) || (4>3 && 100 <1) // ans : true
  // 3) ((10 / 2) > 3) && ((10 % 2) == 0)   // ans true

  /// Challenge 3: Next power of two
  // int number = 16;
  // int noTwo = 0;
  // int temp = number;
  // while (temp != 0) {
  //   temp = (temp / 2).toInt();
  //   noTwo++;
  // }
  // int ans = 1;
  // for (int i = 1; i <= noTwo; i++) {
  //   ans = ans * 2;
  // }
  // if (number* 2 == ans) {
  //   ans = number;
  // }
  // print("Next powers of two number is $ans");

  /// Challenge 4 : Fibonacci
  // int n = 7;
  // int first = 1;
  // int second = 1;
  // for (int i = 3; i <= n; i++) {
  //   int temp = first + second;
  //   first = second;
  //   second = temp;
  // }
  // print(second);

  /// Challenge 5: How many times?
  // var sum = 0;
  // for (var i = 0; i <= 5; i++) {
  // sum += i;
  // }
  // Output : sum variable value is 15 and loop is executed 6 times

  /// Challenge 6 : The Final CountDown
  // for (int i = 10; i >= 0; i--) {
  //   print(i);
  // }

  /// Challenge 7: Print a sequence
  // for (double i = 0; i <= 1; i += 0.1) {
  //   print(i.toStringAsFixed(1));
  // }
}
