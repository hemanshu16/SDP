import 'package:expression_variables_and_constants/expression_variables_and_constants.dart' as expression_variables_and_constants;
import 'dart:math';

void main(List<String> arguments) {
  // this is single line comment
  /*
     this is block comment
   */
  /// this is documention comment
  /*
     first comment
   /* inside comment onther commment nested commment */ 
  
   */

  /*
  /// Printing Message
  print("Hello World");
  */

  ///  Prints a string representation of the object to the console.
  ///  statement is a command, something you tell the computer to do.
  ///  printf is simple statement
  ///  if condition is complex statement
  /* 
   if(8 > 6)
   {
     print("complex statement");
   }
  */

  ///  belowe expression is evaluted but value returned by expression is discarded.
  //  45/4 + 2;

  ///  Expression
  ///  expression is value or something that can be calculated as value
  // print(5+6);

  /// Artimatic Operations
  ///  Adition Operation
  /* int a = 45;
  int b = 35;
  print(a + b);
  */
  /// Substraction Operation
  // print(a - b);

  /// Multiplication Operation
  //  print(a * b);

  /// Division Operation
  // print(a / b);

  /// Integer Division
  // print(a ~/ b);

  /// The Euclidean Modulo Operation
  // print(45 % 7);

  /// Order of Operation
  /// Multiplication and division has same priority and substraction and addition has same priority but multiplication and division has higher priority over substraction and addition
  // print(350/5 + 2)
  /// above statement answer is 72

  /// Maths Function
  /// for use to math function user have to import dart:math library

  //print(sin(45 * pi / 180));
  /// this convert degrees to radians

  // print(min(5,10));
  /// this will return minimum value
  ///  int and doulbe is look like primitive, they are subclassed of num, which is subclass of object

  //  print(sin(45*pi/180));
  /// value of 1 over the square root of 2
  //  print(1/sqrt(2));

  /// Numbers
  //  print(10.isEven);
  /// here int and double is object so we can use its method

  /// Type Inference
  /// In dart var keyword used for declaring varible then dart automatically figure out type of variable by value which is assigned to variable
  /// after if we assign onther value ( data type changed ) then it will generate error.
  // var some = 10;
  // some = 15;
  // some = 3.145;
  /// above sentence throw error because it is not valid
  
  /// Const constants
  /// if we use function that time all arguments passed to function must be const
  /// in const  cast value must be assigned at compile time
  /// final constants
  /// if user want to declaire variable in const but value does not know at compile time that time final keyword is used.

  /// Increment And Decrement Operator
  // int a = 5;
  // a++;
  // print(a);
  // a--;
  // print(a);
  /// above code will print value of a is 5 and 4

  /// challenge 1
  //  int myage = 19;
  //  int dogs = 1 ;

  // challagen 2
  /* int age = 16;
  print(age);
  age = 30;
  print(age); */

  ///  Challange 3 : Compute the answer
  // const x = 46;
  // const y = 10;
  // const answer1 = (x*100) + y;
  // print(answer1);
  // const answer2 = (x*100) + (y*100);
  // print(answer2);
  // const answer3 = (x*100) + (y/100);
  // print(answer3);

  /// challange 4 : Average Rating
  // const rating1 = 45;
  // const rating2 = 56;
  // const rating3 = 50;
  // const average = (rating1 + rating2 + rating3) / 3;
  // print(average);

  ///  Challange 5 : Quadratic Equations
  // int a = 1;
  // int b = 8;
  // int c = 15;
  // print("First Root : ");
  // print((-1 * b + sqrt(b * b - (4 * a * c))) / (2 * a));
  // print("Second Root : ");
  // print((-1 * b + sqrt(b * b + (4 * a * c))) / (2 * a));
}
