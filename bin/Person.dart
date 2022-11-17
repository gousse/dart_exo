enum Sex { male, female, undefined }

class Person {
  final String prenom;
  late Sex _sex;
  int age;

  Person({required this.prenom, required String sex, required this.age}) {
    if (sex.toLowerCase() == "male") {
      _sex = Sex.male;
    } else if (sex.toLowerCase() == "female") {
      _sex = Sex.female;
    } else {
      _sex = Sex.undefined;
    }
  }

  bool isMale() {
    return this._sex == Sex.male ? true : false;
  }

  bool isFemale() {
    return this._sex == Sex.female ? true : false;
  }
}
