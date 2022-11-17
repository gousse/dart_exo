import 'bin/Person.dart';

class Boisson {
  String name;
  int categorie;
  double? degreeAlcool;

  Boisson({required this.name, required this.categorie, this.degreeAlcool});
}

class Barman {
  var categorieBoisson = {
    1: "<1,2° boisson sans alcool, moins de 1,2° d'alcool pur",
    2: "<18° boisson fermentées non distillée: bieres, cidre, vins, cremes de cassis et vins doux ainsi que Vins de liqueur et apéritifs à base de liqueur de fruit (moins de 18° d'alcool pur)",
    4: "Alcool provenant de la distillation des vins, cidres, poirées ou fruits",
    5: "Autre alcool autorisé  (dont le cognac)"
  };

  List<Boisson> bar = [
    Boisson(name: "lait", categorie: 1),
    Boisson(name: "biere", categorie: 2),
    Boisson(name: "cidre", categorie: 2),
    Boisson(name: "vin", categorie: 2),
    Boisson(name: "creme de cassis", categorie: 2),
    Boisson(name: "calvados", categorie: 4),
    Boisson(name: "rhum", categorie: 5),
    Boisson(name: "cognac", categorie: 5)
  ];

  bool isAlcool(Boisson b) {
    return (b.categorie > 1) ? true : false;
  }

  List<Boisson> carteBoisson() {
    return bar;
  }

  void explainCategorieBoisson() {
    categorieBoisson.forEach((key, value) {
      print("Categorie $key: $value");
    });
  }

  bool canDrink(Person p, Boisson b) {
    if (bar.contains(b)) {
      if (b.categorie > 1) {
        return (p.age > 17) ? true : false;
      }
      return true;
    }
    print("Barman: Je n'ai pas la boisson ${b.name}");
    return false;
  }

  sayCanDrink(Person p, Boisson b) {
    if (canDrink(p, b)) {
      print("${p.prenom} age ${p.age} can drink ${b.name}");
    } else {
      print("${p.prenom} age ${p.age} Je ne peux pas te vendre ${b.name}");
    }
  }
}
