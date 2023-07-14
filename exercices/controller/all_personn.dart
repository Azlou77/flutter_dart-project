import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ipssi_bd23_2/controller/constante.dart';
import 'package:ipssi_bd23_2/controller/firestoreHelper.dart';
import 'package:ipssi_bd23_2/model/utilisateur.dart';

class AllPerson extends StatefulWidget {
  const AllPerson({Key? key}) : super(key: key);

  @override
  State<AllPerson> createState() => _AllPersonState();
}

class _AllPersonState extends State<AllPerson> {
  // List bool
  final List<bool> selectedFavoris = [];
}
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirestoreHelper().cloudUsers.snapshots(),
        builder: (context,snap){
         List? documents = snap.data?.docs;
         if(documents == []){
           return const Text("Aucune Donnée");
         }
         else
           {
             return ListView.builder(
               itemCount: documents!.length,
                 itemBuilder: (context,index){
                 Utilisateur lesAutres = Utilisateur(documents[index]);
                 return Card(
                   elevation: 10,
                   color: Colors.white,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                   child: ListTile(
                     leading: CircleAvatar(
                       radius: 60,
                       backgroundImage: NetworkImage(lesAutres.avatar ?? defaultImage),
                     ),
                     title: Text(lesAutres.fullName),
                     subtitle: Text(lesAutres.email,textAlign: TextAlign.start,),
                     trailing: IconButton(
                       isSelected: selectedFavoris[index],
                       onPressed: (int index){
                       // Add a new favoris in the database
                       FirestoreHelper().addFavorites(moi.uid, moi.favoris);
                       // Change state on click
                       setState(() {
                         // Change state on selected icon button
                         // Loop the icons favoris
                         for (int buttonIndex = 0; buttonIndex < isSelected.length; buttonIndex++)
                           if  (buttonIndex == index) {
                           // Change the color of the selected icon
                           icon = const FaIcon(FontAwesomeIcons.pencil,color: Colors.red,size: 15,);

                           } else {
                           // Change keep the color of the unselected icon
                           icon = const FaIcon(FontAwesomeIcons.pencil,color: Colors.grey,size: 15,);
                           }
                         },
                   ),
                   ),
                 );

                 }
             );

           }

        }
    );
  }
}
