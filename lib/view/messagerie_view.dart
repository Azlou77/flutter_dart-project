import 'package:ipssi_bd23_2/controller/firestoreHelper.dart';
import 'package:ipssi_bd23_2/model/utilisateur.dart';
import 'package:flutter/material.dart';
import 'package:ipssi_bd23_2/view/background_view.dart';
import 'package:ipssi_bd23_2/model/message.dart';
import '../controller/constante.dart';

class MessagerieView extends StatefulWidget {
  // Use to get informations for the personn who interact with
  Utilisateur autrePersonne;
  MessagerieView({Key? key,required this.autrePersonne}) : super(key: key);

  @override
  State<MessagerieView> createState() => _MessagerieViewState();
}

class _MessagerieViewState extends State<MessagerieView> {
  // variables
  /* TextEditingController allow you to read text in input field
     use with FireStoreHelper().addMessage() */
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        title: Text(widget.autrePersonne.fullName),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,

      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          BackgroundView(),
          bodyPage(),
        ],
      ),
    );
  }

  Widget bodyPage(){
    return SafeArea(
      bottom: true,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            //message qui va être affiché
            Flexible(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: const Text("Afficher les messages")
              ),
            ),
            const Divider(height: 1.5,),
            //message qu'on  tape
            Container(
              color: Colors.grey[300],
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Flexible(
                    child: TextField(
                      // Display messages when user tap on this button
                      onTap: (){
                        controller: messageController;
                        decoration: const InputDecoration.collapsed(
                        hintText: "Entrer votre message"
                        );

                        // Get messages from database
                        FirestoreHelper().getMessages();
                      },
                      maxLines: null,

                    ),
                  ),
                  IconButton(
                      onPressed: (){
                        // Define collection of key/value pairs for message table
                        Map<String, dynamic> map = {

                          // To get the current date
                          "DATE": DateTime.now(),

                          // Sender and recipient
                          "SENDER": moi.uid,
                          "RECIPIENT": widget.autrePersonne.uid,

                          // Controller is used to write text in input field
                          "CONTENT": messageController.text,

                        };

                        // Add new messages to the database
                        FirestoreHelper().addMessage(moi.uid, map);


                        if(messageController.text != ""){
                          String message = messageController.text;
                          setState(() {
                            messageController.text = "";
                          });

                        }


                      },
                      icon: const Icon(Icons.send)

                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}