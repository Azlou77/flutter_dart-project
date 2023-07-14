import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ipssi_bd23_2/controller/constante.dart';
import 'package:ipssi_bd23_2/controller/firestoreHelper.dart';
import 'package:ipssi_bd23_2/model/utilisateur.dart';
import 'package:ipssi_bd23_2/model/message.dart';
import 'package:ipssi_bd23_2/chat_bubble.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';


class AllMessages extends StatefulWidget {
  const AllMessages({Key? key}) : super(key: key);

  @override
  State<AllMessages> createState() => _AllMessagesState();
}

class _AllMessagesState extends State<AllMessages> {
  // variables
  @override
  Widget build(BuildContext context) {
    /* StreamBuilder allow you to get data from cloud Firebase
       and refresh the view when data change */
    return StreamBuilder<QuerySnapshot>(
      // Use cloud Firebase functions with Messages collection
      stream: FirestoreHelper().cloudMessages.snapshots(),
      builder: (context, snap) {
        // Define list documents to get data from Firebase
        List? documents = snap.data?.docs;
        if (documents == []) {
          // Return Text if documents is empty
          return const Text("Aucune Donnée");
        } else {
          // Return List of messages
          return ListView.builder(
            itemCount: documents!.length,
            itemBuilder: (context, index) {
              // Create Message object from documents
              Message message = Message(documents[index]);
              // Check if message is from me
              bool isMe = message.sender == moi.uid;
              // Return Bubble with message
              return ChatBubble(
                // Styles of Bubble
                margin: const EdgeInsets.all(10),
                alignment: isMe ? Alignment.topRight : Alignment.topLeft,
                backGroundColor: isMe ? Colors.blue[200] : Colors.grey[200],
                color: isMe ? Colors.blue[200] : Colors.grey[200],
                child: Column(
                  crossAxisAlignment:
                      isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                  children: [
                    Text(message.content),
                    Text(
                      DateFormat('dd/MM/yyyy kk:mm')
                          .format(message.date.toDate()),
                      style: const TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              );
            },
          );
        }
      },
    );
  }
