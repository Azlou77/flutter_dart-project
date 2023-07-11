import 'package:flutter/material.dart';
import 'package:flutter_dart-project/exercices/controller/firestoreHelper.dart';

class DashBoard extends StatefulWidget {
  String? mail;
  String? password;
  DashBoard({Key? key,this.mail,this.password}) : super(key: key);
  bool isUpdated = false;
  // Controller for the pseudo
  TextEditingController pseudo = TextEditingController();

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  //variables
  int indexMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width *0.45,
        color: Colors.purple,
        child: SafeArea(
          child: Column(
            children: [
              //avatar circulaire
              CircleAvatar(
                radius: 60,
                // Add background image with constante
                backgroundImage: NetworkImage(image.image),
              ),

              //nom prénom
              Text("Djino Dissingar"),

              //pseudo
              Text("Skweel"),

              //adresse mail
              Text("dissingardjino@icloud.com")
            ],
          ),
        ),
      ),
      FirestoreHelper().stockageImage("images", "image.jpg"),
      appBar: AppBar(
        title: Text(widget.password ??"J'ai pas tapé le password",),
      ),
     
      body: SafeArea(child: bodyPage()),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexMenu,
        onTap: (value){
          setState(() {
            indexMenu = value;
          });

        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Personnes"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favoris")
          BottomNavigationBarItem(icon: Icon(Icons.map),label: "Carte")
        ]
      ),

    );
  }

  Widget bodyPage(){
    switch(indexMenu){
      case 0 : return Text("Liste de personnes");
      case 1 : return Text("Favoris");
      default: return Text("Erreur");
    }
  }
  (isUpdatedPseudo)?Row(
    // Center the children
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // Flexible widget to take the remaining space
      Flexible(
      child: Textfield(
        controller: pseudo,
        decoration: InputDecoration(
          labelText: "Pseudo",
          hintText: "Entrez votre pseudo"
        ),
      ),
      ),
    ]
  )
  
  // Buttons for validation or cancel
  TextButton(onPressed: (){
    // Bring back to the initial state
    setState(() {
      moi.pseudo = pseudo.text;
      Map<String,dynamic> map = {
        "PSEUDO":moi.pseudo
      };
      // Call the update method
      FirestoreHelper().updateUser(moi.uid, map);
      isUpdatedPseudo = false;
    });
  },
  child : Text("Valider")
  )

  : TextButton(onPressed: (){
    child: Text("Annuler")
  })
}
  
