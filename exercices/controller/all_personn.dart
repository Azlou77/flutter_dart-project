import 'package:flutter/material.dart';
/*
    Class to list all person from the database
    @class AllPerson
    @table Users
    @return List of personn
 */
class AllPerson extends StatefulWidget {
  const AllPerson({ Key? key }) : super(key: key);

  @override
  _AllPersonState createState() => _AllPersonState();
}

class _AllPersonState extends State<AllPerson> {
  @override
  Widget build(BuildContext context) {
    // StreamBuilder is a widget to reduce repetetive tasks linked to the Stream using
    return StreamBuilder<QuerySnapshot>(
        stream : FirestoreHelper().cloudUsers.snapshots(),
            buidler: (context,snap){
                List documents = snap.data!.docs;
                if(documents == []){
                    return Text("Aucune donnees");

                }
                else {
                    ListView.builder(
                        // Count the number of users
                        itemCount: documents!.length,
                        itemBuilder: (context,index){
                            // Index return the current user and all properties of him
                            Utilisateurs lesAutres = Utilisateur(documents[index]);
                            return Text(lesAutres.email)
                        }
                    )
                }
            }
    );
    }
}
