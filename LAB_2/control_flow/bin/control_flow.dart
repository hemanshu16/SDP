import 'package:control_flow/control_flow.dart' as control_flow;

void main(List<String> arguments) {
  // print('Hello world: ${control_flow.calculate()}!');
  /// Boolean values
  /// Boolean value have one of two states either true or false.
  // const bool yes = true;
  // cons no = false; // due to type inference you can leave off the type annotation

  /// Boolean Operators
  // Booleans are commonly used to compare values. For example, you may have two values and you want to know if they’re equal. Either they are equal, which would be true, or they aren’t equal, which would be false.

  /// Testing equality
  // You can test for equality using the , which is denoted by ==, that is, two equals signs.

  // const doesOneEqualTwo = (1 == 2)
  // print(doesOneEqualTwo);
  /// here value of doesOneEqualTwo is false
  /// we can compaire int and double variable because both belongs to num type.

  /// Testing inequality
  // const doesOneNotEqualTwo = (1 != 2);
  // hwer value is true

  /// Testing Greater and Less Than
  // const isOneGreaterThanTwo = (1 > 2);
  //  const isOneLessThanTwo = (1 < 2);
  //  print(1 <= 2); // true
  //  print(2 <= 2); // true
  //  print(2 >= 1); // true
  //  print(2 >= 2); // true

  /// Boolean Logic
  // Boolean logic mean combine multiple conditions to form a result.

  /// AND operator
  ///  const isSunny = true;
  // const isFinished = true;
  // const willGoCycling = isSunny && isFinished;
  // willGocycling value is true
  // In and operation if both operand value is true than result value is true otherwise it is false.

  /// Operator precedence
  // const andTrue = 1 < 2 && 4 > 3;  // output : true
  // const andFalse = 1 < 2 && 3 > 4;  // false
  // const orTrue = 1 < 2 || 3 > 4;   // true
  // const orFalse = 1 == 2 || 3 == 4;  // false
  // 3 > 4 && 1 < 2 || 1 < 4
  /// But now it gets a little confusing. You have three conditions with two different logical operators. With the comparisons simplified, you have the following form:

  // false && true || true

  /// Depending on the order you perform the AND and OR operations, you get differentresults. If you evaluate AND first, the whole expression is true, while if you evaluate OR first, the whole expression is false.
  ///  This is where operator precedence comes in. The following list shows the order that Dart uses to evaluate expressions containing comparison and logical operators:
  ///   !
  ///   >= > <= <
  ///   == !=
  ///   &&
  ///   ||
  /// Operators higher in the list are executed before operators
  /// lowerin the list. You can see that && has a higher precedence than ||. So back to case from before:
  /// First Dart will evaluate false && true, which is false. Then Dart will take that false to evaluate false || true, which is true. Thus the whole expression evaluates to true.

  ///  Overriding precedence with parentheses
  ///  If you want to override the default operator precedence, you can put parentheses around the parts Dart should evaluate first.
  // 3 > 4 && (1 < 2 || 1 < 4) // false
  // (3 > 4 && 1 < 2) || 1 < 4 // true

  /// String equality
  /// In Dart, you can compare strings using the standard equality operator, ==, in exactly the same way as you compare numbers. For example:
  // const guess = 'dog';
  // const dogEqualsCat = guess == 'cat'; // false

  /// Mini-exercise - 1
  // const myAge = 19;
  // const isTeenager = myAge >= 13 && myAge <= 19
  // Ouput : True

  /// Mini-exercise - 2
  // const maryAge = 30
  // const bothTeenageres =  myAge >= 13 && myAge <= 19  &&  maryAge >= 13 && maryAge <= 19 ;
  // Output : False

  /// Mini-exercise - 3
  // const reader = "Hemanshu";
  // const ray = "Ray WenderLich";
  // const rayIsReader = (reader == ray); // Output : false

  /// The if statement
  /// easy way we can control flow of program.
  //  if (2 > 1) {
  //   print('Yes, 2 is greater than 1.');
  //   }
  // Output : YEs , 2 is greater than 1.

  /// In if statement condition is always boolean statement
  /// if condition is true then code between curly breaces is exectued otherwise not executed.

  /// The Else Clause
  /// You can extend an if statement to provide code to run in the
  /// event that the condition turns out to be false. This is known as the else clause.
  // example
  //   const animal = 'Fox';
  // if (animal == 'Cat' || animal == 'Dog') {
  // print('Animal is a house pet.');
  // } else {
  // print('Animal is not a house pet.');
  // }

  // Output : Animal is not a house pet.

  /// Else-if chains
  /// You can go even further with if statements. Sometimes you want to check one condition, and then check another condition if the first condition isn’t true. This is where elseif comes into play, nesting anotherif statement in the else clause of a previous if statement.
  // const trafficLight = 'yellow';
  // var command = '';
  // if (trafficLight == 'red') {
  // command = 'Stop';
  // } else if (trafficLight == 'yellow') {
  // command = 'Slow down';
  // } else if (trafficLight == 'green') {
  // command = 'Go';
  // } else {
  // command = 'INVALID COLOR!';
  // }
  // print(command);

  // Output Slow down

  /// Variable Scope
  ///  If you define a variable inside a pair of curly braces, then you’re not allowed to use that variable outside of those braces.
  /// Example
  // const global = 'Hello, world';
  // void main() {
  // const local = 'Hello, main';
  // if (2 > 1) {
  // const insideIf = 'Hello, anybody?';
  // print(global);
  // print(local);
  // print(insideIf);
  // }
  // print(global);
  // print(local);
  // print(insideIf); // Not allowed!
  // }

  /// There are three variables: global, local and insideIf.
  /// There are two sets of nested curly braces, one for the body of main and one for the body of the if statement.
  /// The variable named global is defined outside of the main function and outside of any curly braces.
  /// That makes it a top-level variable, which means it has a gloal scope. That is, it's visible everywhere in the file.
  /// You can see print(global) refernces it both in the if statement body and in the main function body.
  /// The variable named localis defined inside the body of the main function. This makes it a and it has local scope. It’s visible inside the main function, including inside the if statement, but localis not visible outside of the main function.
  /// The variable named insideIf is defined inside the body of the if statement. That means insideIf is only visible within the scope defined by the if statement’s curly braces.
  /// Since the final print statement is trying to reference insideIf outside of its scope, Dart gives you the following error:
  /// Undefined name 'insideIf'.
  /// Delete that final print statement to get rid of the error.

  /// The ternary conditional operator
  ///  Ternary operator takes three opreands
  ///  (condition) ? valueIfTrue : valueIfFalse;
  // const score = 83;
  // const message = (score >= 60) ? 'You passed': 'You failed';
  // In this example, the condition to evaluate is score >= 60. If the condition is true, the result assigned to message will be 'You passed'; if the condition is false, the result will instead be 'You failed'

  /// Mini-exercise - 1
//   const myAge = 19;
//   if (myAge <= 19 && myAge >= 13) {
//     print("Teenager");
//   } else {
//     print("Not a Teenager");
//   }
// }
// Output : Teenager

  /// Mini-exercise - 2
  // const myAge = 19;
  // const ans = (myAge <= 19 && myAge >= 13) ? "Teenager" : "Not a Teenager";
  // print(ans);
// Output : Teenager

  /// Switch Statements
  /// Switch : Based on the value of the variable in parentheses, which can be an int, String or compiletime constant, switch willredirect the program control to one of the case values that follow.
  /// Case : Each case keyword takes a value and compares that value using == to the variable after the switch keyword. You add as many case statements as there are values to check. When there’s a match Dart willrun the code that follows the colon.
  /// Break : The break keyword tells Dart to exit the switch statement because the code in the case block is finished.
  /// default : : If none of the case values match the switch variable, then the code after default will be executed

  // const number = 3;
  // if (number == 0) {
  // print('zero');
  // } else if (number == 1) {
  // print('one');
  // } else if (number == 2) {
  // print('two');
  // } else if (number == 3) {
  // print('three');
  // } else if (number == 4) {
  // print('four');
  // } else {
  // print('something else');
  // }
// output : three

  /// using switch
  // const number = 3;
  // switch (number) {
  // case 0:
  // print('zero');
  // break;
  // case 1:
  // print('one');
  // break;
  // case 2:
  // print('two');
  // break;
  // case 3:
  // print('three');
  // break;
  // case 4:
  // print('four');
  // break;
  // default:
  // print('something else');
  // }
  // output : three

  /// Switch statement also works with strings
  // const weather = 'cloudy';
  // switch (weather) {
  // case 'sunny':
  // print('Put on sunscreen.');
  // break;
  // case 'snowy':
  // print('Get your skis.');
  // break;
  // case 'cloudy':
  // case 'rainy':
  // print('Bring an umbrella.');
  // break;
  // default:
  // print("I'm not familiar with that weather."
  // );
  // }
  // ouput : Bring an umbrella.

  /// Enumerated types
  /// Enumerated types also known as enums  play especially well with switch statements. You can use them to define your own type with a finite number of options
  /// Mini-Exercies - 1
  // const audioState = AudioState.paused;
  //     switch ( audioState) {
  //     case AudioState.paused:
  //     print('Audio is Paused.');
  //     break;
  //     case AudioState.playing:
  //     print('Audio is Playing.');
  //     break;
  //     case AudioState.stopped:
  //     print('Audio is stopped.');
  //     break;
  //     }
}

/// Mini-Exercies - 1
// enum AudioState {
//   playing,
//   paused,
//   stopped,
// }
