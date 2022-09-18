import 'package:data_types_and_operations/data_types_and_operations.dart'
    as data_types_and_operations;

void main(List<String> arguments) {
  //print('Hello world: ${data_types_and_operations.calculate()}!');

  /*
  /// Data Types
  /// In Dart, a is a way to tell the compiler how you plan to use some data. By this point in this book, you’ve already seen the following types:
  /// int, double, num, dynamic, String
  /// the root of all types is the Object type.
  /// This type defines a few core operations, such as testing for equality and describing the object in text. Every other type in Dart is a subtype of Object, and as a subtype, shares Object’s basic functionality.
  */

  /*
  /// Annotating variables explicitly
  /// It’s fine to always explicitly add the when you declare a variable. This means writing the data type before the variable name.
  // int myInteger = 10;  // variable annotated with int
  // double myDouble = 3.14;  // variable annotated with double
   */


  /*
  /// Creating constant variables
  /// Declaring variables the way you did above makes them mutable. If you want to make them immutable, but still keep the type annotation, you can add const or final in front.
  // const int first = 10;
  // final int second = 45;
  */

  /*
  /// type inference
  /// in type inference we are not annotating variables explicity but which value we are assign to variable based on that dart compiler we will automatically detact type of varialbe.
  // const variable = 10.5;
  /// in above code compiler will figure out type that is double.
  */

  /*
  /// checking the type at run time
  // num mynumber = 3.14;
  // print(mynumber is double);
  // print(mynumber is int);
  /// about code output is true false
  /// Because mynumber is type of double not type of int
  // print(mynumber.runtimeType);
  /// above code output is double because mynumber is type of double
  */

  /*
  /// Type Conversion
  /// if we want to type conversion from double to int
  // var first = 100;
  // var second = 100.05;
  // first = second;
  /// in above code compiler will give error
  /// A value of type 'double' can't be assigned to a variable of type 'int'.
  
  /// correct way of doing type convresion is
  // first = second.toInt();
  /// The assignment now tells Dart, unequivocally, that you want to convert from the original type, double, to the new type, int.
   
  */

  /*
  /// Operators with mixed types
  /// if we do multiplication of two variable in which one variable is int and another is double then answer is in double type
  /// beacuse making it in int it will cause a loss of precision.
  /// If you actually do want an int as the result, then you need to perform the conversion explicitly:

  // const totalCost = (hourlyRate * hoursWorked).toInt();

  /// The parentheses tell Dart to do the multiplication first, and after that, to take the result and convert it to an integer value. However, the compiler complains about this:
  /// Const variables must be initialized with a constant value.
  /// The problem is that toInt is a runtime method. This means that totalCost can’t be determined at compile time, so making it const isn’t valid. No problem; there’s an easy fix. Just change const to final:

  // final totalCost = (hourlyRate * hoursWorked).toInt();
  */

  /*
  /// Casting Down
  /// I have variable which type is num i want to check that number is even or not
  // num mynum  2;
  // print(mynum.even);

  /// THe compiler give an error :
  /// The getter "iseven" isn't defined for the type "num"
  /// the issue is that mynum could potentially be a double at runtime, since mynum includes both double and int
  /// in this case i have to cast mynum variable num to int.
  // final number = mynum as int;
  // print(number.isEven);

  // num someNumber = 3;
  // final someDouble = someNumber as double;

  /// This will crash with the following message:
  /// _CastError (type 'int' is not a subtype of type 'double' in type cast)
  /// The runtime type of someNumberis int, not double. In Dart, you’re  not allowed to cast to a sibling type, such as int to double. You can only cast down to a subtype.
  */

  /*
  /// Mini - exercises
  /// 1)
  // const age1 = 42;
  // const age2 = 21;
  /// Yes both constant inferred corrently to int type

  /// Mini - exercise - 2
  // const averageAge = (age1 + age2) / 2;
  /// Here type of averageAge is double bacause avarage of age1 and age2 is double type
  */

  /*
  ///Strings
  /// In dart string is immutable means ones varialbe assigned to string that string can not modify but variable value can be changed.
  /// string can replaced with other string
  /// In dart there is not char type of character type while in other programming language their is char type.
  // const letter  = "a";
  /// in above code letter type is string still it take one character

  /// Dart allows you to use either single-quotes or double-quotes for string literals. Both of these are fine:
// 'I like cats'
//"I like cats"

  /// Although Dart doesn’t have a recommended practice, the Flutter style guide does recommend using single-quotes, so this book will also follow that practice.
  /// You might want to use double-quotes, though, if your stringincludes any apostrophes.
// "my cat's food"
  /// Otherwise you would need to use the backslash \ as anescape character so that Dart knows that the string isn’tending early:
// 'my cat\'s food'
  */

  /*
  ///String Concatenation
  /// In string concatenation we can concat two strings
  // var message = "hello " + " good morning.";
  // print(message);
  /// Output of above code is hello good morning.
  /// You need to declare message as a variable, rather than aconstant, because you want to modify it. You can add stringliterals together, as in the first line, and you can add stringvariables or constants together, as in the third line.
  // If you find yourself doing a lot of concatenation, you should use a string buffer, which is more efficient.

  // final message = StringBuffer();
  // message.write('Hello');
  // message.write(' my name is ');
  // message.write('hemanshu');
  // message.toString();
// output : "Hello my name is hemanshu"

  /// this creates a mutable location in memory where you can  /// tadd to the string without having to create a new string for  /// tevery change. When you’re all done, you use toString to  /// tconvert the string bufferto the String type. This is similar  /// tto what you saw with type conversion earlier with toInt.
  */

  /* 
  /// Interpolation
  /// we can build strin using interpolation.
  /// IN this we have to write $variable name so whatever variable value is considered as string
  /// we can fix number of characters from variable by toStringAsFixed method
  // const onethird = 1 / 3;
  // final sentence = "ont third is ${onethird.toStringAsFixed(3)}";
  // print(sentence);

  /// in above code if we use final sentence instead const then it give error because value is computed at runtime.

  /// Multi-Line Strings
  /// the three single-quotes(''')singigy that this is a multi-line string. Three double-quotes(""") would have done the same thing.
  /// Example
  // const bigString = '''
  // You can have a string
  // that contains multiple
  // lines
  // by
  // doing this.''';
  // print(bigString);

  /// The example above will print the following:
  // You can have a string
  // that contains multiple
  // lines
  // by
  // doing this.

  /// here every new line locaionts are preserved.
  /// If you
  /// ust want to use multiple lines in code but don’t want   th/eoutput string to contain newline characters, then you cansurround each line with single-quotes:

  /// example
  // const oneLine = 'This is only '
  //     'a single '
  //     'line ' + // here + operator can use
  //     'at runtime.';
  // print(oneLine);
  /// Output is :
  // This is
  // two lines

  /// if we want to print some special characters that string might conatain.
  /// that time putting r in front of the string lieral. it will print.
  // const rawString = r'My name \n is $name.';
  // print(rawString);
  /// output is : My name \n is $name.
  */

  /*
  /// Mini-exercise - 1
  // const firstName = "Hemanshu";
  // const lastName = "faldu";

  /// Mini-exercise - 2
  // const fullName = firstName + " " + lastName;

  /// Mini-exercise - 3
  // const mydetails = "hello my name is $fullName";
  // print(mydetails);
  */

  /*
  /// Objects and dynamic Types
  /// Javascript is a dynamically-typed language.
  /// In javascript type can change at runtime.
  ///  Where Dart is optionally-typed language.
  /// That means you can choose to use Dart as a dynamically typed language or as statically typed language.
  /// Static means that something cannot change; once you tell Dart what type a variable is, you’re not allowed to change it anymore
  // var myVariable = 42;
  // myVariable = 'hello'; // compile-time error
  /// The Dart compiler will immediately tell you that it’s an error. that makes type errors trivial to detect.

  /// dart also provide dynamic type for those who wish write their programs in a dynamically-typed way.

  /// example
  // dynamic myvariable = 42;
  // myvairable = "hello" // it is ok not give error.

  /// In fact, this is the default if you use var and don’t initialize your variable:
  // var myVariable; // defaults to dynamic
  // myVariable = 42; // OK
  // myVariable = 'hello'; // OK

  /// If you need to explicitly say that any type is allowed, you should consider using the Object.
  // Object? myVariable = 42;
  // myVariable = 'hello'; // OK
  */

  /*
  /// Challenges
  //Challenge 1: Teacher’s grading
  // const attendance = (90 * 20) / 100;
  // const homework = (80 * 30) / 100;
  // const exam = (50 * 94) / 100;
  // final grade = (attendance + homework + exam).toInt();
  // print(grade);

  /// Challenge 2: Find the error
  //  const name = 'Ray';
  //   name += ' Wenderlich';
  /// here name is const so we can not assign new value (as string to it).

  /// Challenge 3: What type?
  // const value = 10 / 2;
  /// the type of value variable is double.

  /// Challenge 6: In summary
  // const number = 10;
  // const multiplier = 5;
  // final summary = '$number* $multiplier = ${number * multiplier}';
  /// The value of summary variable is :- 10* 5 = 50
  */
  
}
