class Profile {

  String surname;
  String name;
  int age;
  bool gender;
  double heitght;
  String secret;
  List<String> hobbies;

  String favoritelang;

  Profile({
    this.surname = "",
    this.name = "",
    this.age = 0,
    this.gender = true,
    this.heitght = 0.0,
    this.secret = "",
    this.hobbies = const [],
    this.favoritelang = "Dart",
  });

  String setName() => "$surname $name";

  String setAge() {
    if (age > 1) {
      ageString += "s";
    }
    return ageString;
  }

  String genderString() => (gender) ? "Féminin" : "Masculin";

  String setHeitght() => "$height cm"

  String setHobbies() {
    String toHobbiesString = "";
    if (hobbies.length == 0) {
      return toHobbiesString;
    } else {
      toHobbiesString = "Mes hobbies sont : ";
      hobbies.forEach((hobbies) {
        toHobbiesString += " $hobbie,";
      });
      return toHobbiesString;
    }
  }


}
