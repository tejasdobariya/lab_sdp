import 'package:lab3_tut3.dart' as lab3_tutorial3;
import 'package:characters/characters.dart';

void main(List<String> arguments) {
  //CHARACTERS (UTF-16 CODE)

  var name = "Tejas";
  print(name.codeUnits); //[86, 114, 117, 115, 104, 97, 108, 105]
  print(name.codeUnits.length);

// const emoji='🎯';
// print(emoji.codeUnits);     //[55356, 57263]
// print(emoji.runes);         //(127919)

  const smile = "😇";
  print(smile.runes);
  print(smile.codeUnits.length);

// const family = '👪';         //(46)
// print(family.runes);
// print(family.codeUnits.length);
// print(family.runes.length);

// print(family.characters.length);   //using characters package
}
