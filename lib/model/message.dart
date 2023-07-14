import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ipssi_bd23_2/controller/constante.dart';

/*
 * Class to create an model of message
 * @class Message
 * @return List string messages
 */
class Message {
  late String uid;
  late Timestamp date;
  late String content;
  late String sender;
  late String  recipient;




  // Constructor
  Message.vide(){
    uid = "";
    date = Timestamp.now();
    content = "";
    sender = "";
    recipient = "";

  }

  Message(DocumentSnapshot snapshot){
     uid = snapshot.id;
      Map<String,dynamic> map = snapshot.data() as Map<String,dynamic>;
      date = map["DATE"];
      content = map["CONTENT"];
      sender = map["SENDER"];
      recipient = map["RECIPIENT"];
    }
  }
