import 'package:tutorial_3_2/tutorial_3_2.dart' as tutorial_3_2;

void main(List<String> arguments) {
  // print('Hello world: ${tutorial_3_2.calculate()}!');

  /// A Function  is one small task, or sometimes a collection of several smaller, related tasks that you can use in conjunction with other functions to accomplish a larger task.

  ///Functions Basics
  /// You can think of functions like machines; they take something you provide to them (the input), and produce something different (the output).
  /// Example
  /// With an apple juicer, you put in apples and you get out apple juice.

  /// Why functions?
  /// if ther is small piece of code in program which is repeated many times
  /// ther occure two problem
  ///  1) you’re duplicating effort by having this code in multiple places in your program.
  ///  2) that if you need to change the logic in that bit of code later on, you’ll have to track down all of those instances of the code and
  /// change them in the same way. That creates a high possibility that you’ll make a mistake somewhere, or even miss changing one of the instances because you didn’t see it.
  /// Functions are one of the main solutions to the duplication problem in the example above.

  /// Anatomy of a Dart function
  ///  a function consists of a return type, a name, a parameterlist in parentheses and a body enclosed in braces.
  /// Return Type : it tells you immediately what the type will be of the function output.
  /// Function Name : you should use lowercamelcase naming convention.
  /// Parameters : are the input to the function, they go inside the parentheses after the function name.
  /// For each parameter, you write the type first, followed by the name. Just as with variable names, you should use lowerCamelCase for
  /// your parameter names.

  ///  Return Value
  /// This is the function’s output, and it should match the return type.
  /// If the return type is void, though, then you don’t return anything.

  /// The return type, function name and parameters are collectively known as the . The code between the braces is known as the .

  // const input = 12;
  // final output = compliment(input);
  // print(output);

  // String compliment(int number) {
  // return '$number is a very nice number.';
  // }

  /// main. Dart supports , which are functions that aren’t inside a class or another function.
  /// Conversely, you may nest one function inside another. And when a function is inside a class, it’s called a ,method.

  /// Using multiple parameters
  /// IN dart you can use multiple parameters separate them with commas.
  ///       void helloPersonAndPet(String person, String pet) {
  ///     print('Hello, $person, and your furry friend,
  ///     $pet!');  }
  /// While calling function supply argument in same order as defined parameters. otherwise get something unknown.

  /// Making parameters optional
  // helloPersonAndPet();    // Calling Above Function without passing arguments.
  // 2 positional argument(s) expected, but 0 found.   // COmpiler error

  // String fullName(String first, String last, String title)
  //  {
  //   return '$title $first $last';
  //  }

  /// The thing is, not everyone has a title, or wants to use their title, so your function needs to treat the title as optional. 
  /// To indicate that a parameter is optional, you surround the parameter with square brackets and add a question mark

// String fullName(String first, String last, [String? title]) {
    //  if (title != null) {
    //  return '$title $first $last';
    //  } else {
    //  return '$first $last';
    //  }
// }

 /// If you don’t pass in a value for title, then it will have the value of null, which means “no value”.
 
///  Providing default values
//  bool withinTolerance(int value, [int min = 0, int max = 10])
//   { return min <= value && value <= max; }
// withinTolerance(5) // true
// withinTolerance(15) // false

/// Since 5 is between 0 and 10, this evaluates to true; but since
/// 15 is greater than the default max of 10, it evaluates to false.


/// Naming parameters
// Dart allows you to use to make the meaning of the parameters more clearin function calls.
  /*bool withinTolerance(int value, {int min = 0, int max = 10}) {
    return min <= value && value <= max;
    }
  withinTolerance(9, min: 7, max: 11) // true
  withinTolerance(9, min: 7, max: 11) // true
  withinTolerance(9, max: 11, min: 7) // true
  withinTolerance(5) // true
  withinTolerance(15) //false
  withinTolerance(5, min: 7) //false
  // Named parameters are optional by default, but value can’t be optional.
  // What you want is to make value required instead of optional, while still keeping it as a named parameter.
  bool withinTolerance({ required int value, int min = 0, int max = 10}) {
    return  min <= value && value <= max;
  }
  */

  /*
  // Dart is an optionally-typed language, so it’s possible to omit the types from your function declaration.
  compliment(number) {
    return '$number is a very nice number.';
  }
  // Dart can infer that the return type here is String, but it has to fall back on dynamic forthe unknown parameter type.
  */

  /*
  // Mini Exercise
  // 1. Write a function named youAreWonderful, with a String parameter called name. It should return a string using name, and say something like “You’re wonderful, Bob.”
  String youAreWonderful(String name){
    return "You are wonderful,$name";
  }
  // 2. Add another int parameter to that function called numberPeople so that the function returns something like “You’re wonderful, Bob. 10 people think so.”
  String youAreWonderful(String name, int numberPeople){
    return "You are wonderful,$name. $numberPeople think so";
  }
  // 3. Make both inputs named parameters. Make name required and set numberPeople to have a default of 30.
  String youAreWonderful({required String name, int numberPeople = 30}){
    return "You are wonderful,$name. $numberPeople think so";
  }
  */

  /*
  // Anonymous Functions
  // If you remove the return type and the function name, then what you have left is an anonymous function.
  // Functions can be assigned to variables
  Function multiply = (int a, int b) {
    return a * b;
  };
  print(multiply(2, 3));
  // you need anonymous functions is that you can’t assign a named function to a variable
  // Function myFunction = int multiply(int a, int b)
  // {
  //   return a * b;
  // };
  // you can also have Function as a parameter
  void namedFunction(Function anonymousFunction) {
    // function body
  }
  // you can also return them as output
  Function namedFunction() {
    return () {
      print('hello');
      };
  }
  Function applyMultiplier(num multiplier) {
  return (num value) {
    return value * multiplier;
    };
  }
  final triple = applyMultiplier(3);
  print(triple(6));
  print(triple(14.0));
  */

  /*
  // Anonymous functions in forEach loops
  const numbers = [1, 2, 3];
  numbers.forEach((number) {
    final tripled = number * 3;
    print(tripled);
  });
  */

  /*
  // Closures and scope
  // Anonymous functions in Dart act as what are known as Closure.
  // A scope in Dart is defined by a pair of curly braces.
  var counter = 0;
  final incrementCounter = () {
    counter += 1;
  };
  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  print(counter);

  Function countingFunction() { var
  counter = 0;
  final incrementCounter = () {
    counter += 1;
    return counter;
    };
  return incrementCounter;
  final counter1 = countingFunction();
  final counter2 = countingFunction();
  print(counter1()); // 1
  print(counter2()); // 1
  print(counter1()); // 2
  print(counter1()); // 3
  print(counter2()); // 2
  // each call to the function will increment its own counter independently
  */

  /*
  // Mini Exercise
  // 1. Change the youAreWonderfulfunction in the first mini-exercise of this chapter into an anonymous function. Assign it to a variable called wonderful.
  function wonderful = ({required String name, int numberPeople = 30}){
    return "You are wonderful,$name. $numberPeople think so";
  };
  wonderful("Bob");
  // 2. Using forEach, print a message telling the people in the following list that they’re wonderful.
  const people = ['Chris', 'Tiffani', 'Pablo'];
  people.forEach((p)){
    print("You are beautiful,$p")
  };
  */

  /*
  // Arrow Function
  // Dart has a special syntax for functions whose body is only one line.
  int add(int a, int b) => a + b;
  */

  /*
  // Mini-exercise
  // Change the forEach loop in the previous “You’re wonderful” mini-exercise to use arrow syntax.
  const people = ['Chris', 'Tiffani', 'Pablo'];
  people.forEach((p) => print("You are beautiful,$p"));
  */

  /*
  // Challenges
  // Challenge 1: Prime time
  // Write a function that checks if a number is prime.
  bool isPrime(N) {
    for (var i = 2; i <= N / i; ++i) {
      if (N % i == 0) {
        return false;
      }
    }
    return true;
  }
  isPrime(10); //false
 
  */
}































































































}

