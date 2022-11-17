import '../Barman.dart';
import 'Person.dart';

// faire une boucle de 0 a 100 et imprimer que les nombres impairs
void print100FirstImpair() {
  for (int i = 0; i < 101; i++) {
    if (i % 2 != 0) {
      print("$i impair");
    }
  }
}

// convertis celcius to farheneight
double celciusToFarheneight(double celcius) {
  return (celcius * 9 / 5) + 32;
}

void main() {
  print100FirstImpair();
  double temp = 25;
  print("$temp °C is ${celciusToFarheneight(temp)} °F");

  Person p = Person(prenom: "paul", sex: "male", age: 19);
  print("${p.prenom} ${p.age} ans male? ${p.isMale()} female? ${p.isFemale()}");

  Person mineur = Person(age: 12, prenom: "foo", sex: "female");
  Barman barman = Barman();

  barman.explainCategorieBoisson();

  barman.carteBoisson().forEach((element) {
    barman.sayCanDrink(p, element);
    barman.sayCanDrink(mineur, element);
  });
  barman.sayCanDrink(p, Boisson(name: "vodka", categorie: 4));
}
