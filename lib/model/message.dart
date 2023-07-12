import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ipssi_bd23_2/controller/constante.dart';

/*
 * Class to create an model of message
 * @class Message
 * @return List string messages
 */
class Message {
  late String uid;
  late String nom;
  late String prenom;
  late Timestamp date;
  late String content;
  late bool isSender;
  late bool isRecipient;

  // Function to concatenate the first name and last name
  String get fullName {
    return prenom + " " + nom;
  }

  // Constructor
  Message.vide(){
    uid = "";
    nom ="";
    prenom = "";
    date = Timestamp.now();
    content = "";
    isSender = false;
    isRecipient = false;

  }

  Message(DocumentSnapshot snapshot){
     uid = snapshot.id;
      Map<String,dynamic> map = snapshot.data() as Map<String,dynamic>;
      nom = map["NOM"];
      prenom = map["PRENOM"];
      date = map["DATE"];
      content = map["CONTENT"];
      isSender = map["ISSENDER"];
      isRecipient = map["ISRECIPIENT"];
    }
  }
