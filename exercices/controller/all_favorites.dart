import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ipssi_bd23_2/controller/constante.dart';
import 'package:ipssi_bd23_2/controller/firestoreHelper.dart';
import 'package:ipssi_bd23_2/model/utilisateur.dart';


/*
 * Class to list all favorites from the database
 * @class AllFavorites
 * @table Users
 * @return List of favorites
 * @package firestoreHelper.dart to get function updateUser
   modify colums favoris
 * @package utilisateur.dart to view the type of favoris
 * @package constant.dart to use moi.favoris
 */
class AllFavorites extends StatefulWidget {
  const AllFavorites({ Key? key }) : super(key: key);

  @override
  _AllFavoritesState createState() => _AllFavoritesState();
}

class _AllFavoritesState extends State<AllFavorites> {
  @override
  // variables
  bool isLiked = false;
  void  initState() {
    super.initState();
    isLiked = false;
  }

  Widget build(BuildContext context) {
    :Row(
      // Heart icon
      IconButton(
        onPressed: (){
          // Change state on click
          setState(() {
            // Update the favoris field in the database
               moi.favoris = favoris.text;
                              // Loop on the list of favoris
                              Map<String,dynamic> map = {
                                "FAVORIS": moi.favoris
                              };
                              FirestoreHelper().updateUser(moi.uid, map);
                              isLiked = true;
                            });
                          },

        // Change icon color on change state
        icon: const FaIcon(FontAwesomeIcons.pencil,color: Colors.red,size: 15,)
      ),

      
    
    );
  }
}
