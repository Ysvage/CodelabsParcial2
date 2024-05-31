//Codelab 1 Parcial 2 Yasser Saldaña

// Non-nullable
/*void main() {
  int a;
  a = 3;
  print('a is $a.');
}*/

//Nullable
/*void main() {
  int? a;
  a = null;
  print('a is $a.');
}*/

//Nullable Type Parameters For Generics

/*void main() {
  List<String> aListOfStrings = ['uno', 'dos', 'tres'];
  List<String>? aNullableListOfStrings;
  List<String?> aListOfNullableStrings = ['uno', null, 'tres'];

  print('aListOfStrings is $aListOfStrings.');
  print('aNullOfStrings is $aNullableListOfStrings.');
  print('aListOfNullableStrings is $aListOfNullableStrings.');
}*/

//The null assertion operator (!)

/*int? couldReturnNullButDoesnt() => -3;
int? couldBeNullButIsnt = 1;

void main() {
  List<int?> listThatCouldHoldNulls = [2, null, 4];

  int a = couldBeNullButIsnt!;
  int b = listThatCouldHoldNulls.first!; // primer item de la lista
  int c = couldReturnNullButDoesnt()!.abs(); // valor absoluto

  print('a is $a.');
  print('b is $b.');
  print('c is $c.');
}*/

//The "required" keyword

/*int addThreeValues({
  required int first,
  required int second,
  int third = 0,
}) {
  return first + second + third;
}

void main() {
  final suma = addThreeValues(
    first: 2,
    second: 5,
    //  third: 3,
  );
  print(suma);
}*/

//Type Promotion
/*
void main() {
  String? text;

  if (DateTime.now().hour < 12) {
    text = "It's morning! Let's make aloo paratha";
  } else {
    text = "It's afternoon! Let's make biryani";
  }

  print(text);
  print(text.length);
}*/

//Type Promotion via null checks
/*
int getLength(String? str) {
  if (str == null) {
    return 0;
  }
  return str.length;
}

void main() {
  print(getLength('This is a String!'));
}*/

/*int getLength(String? str) {
  if (str == null) {
    throw 'Hey, that string was null!';
  }
  return str.length;
}

void main() {
  print(getLength(null));
}*/
/*
import 'dart:math';

class StringProviderFactory {
  static StringProvider getProvider() => RandomStringProvider();
}
clas StringProvider{
  String? value = 'Hi!';
}
class RandomStringProvider stends StringProvider {
  String= get value => 
    Random().nextBool() ? 'A String!' : null;
}

void main(){
  final provider = StringProviderFactory.getProvider();

  final str = provider.value;

  if(str == null){
    print('The value is null');
  } else {
    print('The value is not null, so print it!');
    printString(str);
  }
}*/

// The late keyword
/*class Meal {
  late String description;

  void setDescription(String str) {
    description = str;
  }
}

void main() {
  final myMeal = Meal();
  myMeal.setDescription('Feijoada');
  print(myMeal.description);
}*/

// an advanced patern: late circular references
/*
class Team {
  late final Coach coach;
}

class Coach {
  late final Team team;
}

void main() {
  final myTeam = Team();
  final MyCoach = Coach();
  myTeam.coach = MyCoach;
  MyCoach.team = myTeam;

  print('All Done');
}*/

//Late and Lazy

int _computeValue() {
  print('In _computeValue...');
  return 3;
}

class CachedValueProvider {
  late final _cache = _computeValue();
  int get value => _cache;
}

void main() {
  print('Calling constructor...');
  var provider = CachedValueProvider();
  print('Getting Value...');
  print('The Value is ${provider.value}');
}
