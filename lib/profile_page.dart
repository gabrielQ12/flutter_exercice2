import 'package:exercice2_udemy/profile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  Profile myProfile = Profile(surname: "Gabriel", name: "Quinette");
  late TextEditingController surname;
  late TextEditingController name;
  late TextEditingController secret;

  @override
  void initState() {
    super.initState();
    surname = TextEditingController();
    name = TextEditingController();
    secret = TextEditingController();
    surname.text = myProfile.surname;
    name.text = myProfile.name;
    secret.text = myProfile.secret;
  }

  @override
  void dispose() {
    surname.dispose();
    name.dispose();
    secret.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mon profile")),
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Card(
              color: Colors.deepPurpleAccent.shade100,
              elevation: 10,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text(myProfile.setName()),
                    Text("Age: ${myProfile.setAge()}"),
                    Text("Taille: ${myProfile.setHeight()} "),
                    Text("Genre: ${myProfile.genderString()}"),
                    Text("Hobbies: ${myProfile.setHobbies()}"),
                    Text(
                        "Langage de programmation favori: ${myProfile.favoritelang}"),
                  ],
                ),
              )),
          const Divider(
            color: Colors.deepPurpleAccent,
            thickness: 2,
          ),
          const Text("Modifier les informations",
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )),
          myTextField(controller: surname, hint: "Entrez votre prénom"),
          myTextField(controller: name, hint: "Entrez votre nom"),
          myTextField(controller: secret, hint: "Dites nous un secret", isSecret: true,)
        ],
      )),
    );
  }

  TextField myTextField(
      {required TextEditingController controller,
      required String hint,
      bool isSecret = false}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
      ),
      obscureText: isSecret,
      onSubmitted: ((newValue) {
        updateUser();
      }),
    );
  }

   updateUser() {
    setState(() {
      myProfile = Profile(
        surname: (surname.text != myProfile.surname)
            ? surname.text
            : myProfile.surname,
        name: (name.text != myProfile.name)
          ? name.text
          : myProfile.name,
        secret: secret.text,
      );
    });
  }
}
