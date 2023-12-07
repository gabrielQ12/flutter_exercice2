import 'package:exercice2_udemy/profile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  Profile myProfile = Profile(surname: "Gabriel", name: "gabrielQ12");

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
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
                Text("Langage de programmation favori: ${myProfile.favoritelang}"),
              ],
            ),
          )
          ),
          Divider(color: Colors.deepPurpleAccent, thickness: 2,)
        ],
      )
      ),
    );
  }
}
