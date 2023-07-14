import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ipssi_bd23_2/controller/constante.dart';
import 'package:ipssi_bd23_2/controller/firestoreHelper.dart';
import 'package:ipssi_bd23_2/model/utilisateur.dart';
import 'package:ipssi_bd23_2/model/message.dart';
import 'package:chat_bubbles/chat_bubbles.dart';


class AllMessages extends StatefulWidget {
  const AllMessages({Key? key}) : super(key: key);

  @override
  State<AllMessages> createState() => _AllMessagesState();
}

class _AllMessagesState extends State<AllMessages> {
  @override
  Widget build(BuildContext context) {

    /* StreamBuilder allow you to get data from cloud Firebase
       and refresh the view when data change */
    return StreamBuilder<QuerySnapshot>(
        // Use cloud Firebase functions with Messages collection
        stream: FirestoreHelper().cloudMessages.snapshots(),
          builder: (context,snap){

          // Define list documents to get data from Firebase
          List? documents = snap.data?.docs;
          if(documents == []){

            // Return Text if documents is empty
            return const Text("Aucune Donnée");
          }
          else
            {
              // Return List of messages if documents is not empty
              return ListView.builder(
              itemCount: documents!.length,
              itemBuilder: (context,index){

                // Create Message object with selected documents
                Message lesAutresMessages = Message(documents[index]);

                // Use Bubble package to display messages data
                Stack (
                    children: [

                      /* Use Scroll for better experience for
                         better experience for user when navigate
                         between list messages */
                      SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            // Display message content in input field
                            TextButton
                              (
                                onPressed: (){},
                                // Get message content from Message object
                                child:Row(children: <Widget>[
                                  // Display content + date in one line
                                  Text(lesAutresMessages.content),
                                  //Convert date to string because Timestamp format
                                  Text(lesAutresMessages.date.toString()),

                                  ],),
                            ),
                          ],
                        ),
                      ),
                    ],

              );
              });
          }
        }
    );
  }
}

