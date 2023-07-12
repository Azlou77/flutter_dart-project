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
                       // To select only one icons
                       isSelected: isSelected,
                       onPressed: (int index){
                        // Add a new favoris in the database
                          FirestoreHelper().addFavorites(moi.uid, lesAutres.uid);
                        // Change state on click
                        setState(() {
                            // Change state on selected button
                            isSelected[index] = !isSelected[index];
                        // Change icon color on change state
                        icon: const FaIcon(FontAwesomeIcons.pencil,color: Colors.red,size: 15,)

                       },
                       icon: const Icon(Icons.favorite),

                        ),
                    ),
                ),
            ),
        );
    }
}
}
}
                    

                       

                