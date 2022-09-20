import 'package:tutorial_3_3/tutorial_3_3.dart' as tutorial_3_3;
import 'package:characters/characters.dart';

void main(List<String> arguments) {
  // print('Hello world: ${tutorial_3_3.calculate()}!');

  ///Getting Characters

  /// IN Other Programming Language ther is character or char type but in dart there is no char type
  // const letter = "a";
  /// in above sentence if letter variable contain only charater but still that type is stirng.

  /// String  is collection of char but dart string is collection UTF-16 code units
  /// UTF-16 is way to encode unicode values by 16 bit numbers.

//  var salutation = 'Hello!';
//  print(salutation.codeUnits);
  /// Above Code will Print each character UTF-16 code unit value.

  ///However, 16 bits only give you 65,536 combinations, but there are more than 65,536 characters in the world!
  ///UTF-16 has a special way of encoding code points higher than 65,536 by using two code units called SURROGATE PAIRS

  // const dart = '🎯';
  // print(dart.codeUnits);
  // Output : [55356, 57263]    Surrogate pairs code of dart string.

  // const dart = '🎯';
  // print(dart.runes);
  //Output (127919)
  /// If we want to get unicode code point directly then runes property give direct unicode code point value.

  /// Unicode grapheme clusters
  // const family = "-";
  // print(family.runes);
}
