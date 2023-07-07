  // Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
  // for details. All rights reserved. Use of this source code is governed by a
  // BSD-style license that can be found in the LICENSE file.

  import 'package:flutter/material.dart';

  void main() => runApp(MyApp());

  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      );
    }
  }

  class MyHomePage extends StatefulWidget {
    final String title;

    const MyHomePage({
      Key? key,
      required this.title,
    }) : super(key: key);

    @override
    State<MyHomePage> createState() => _MyHomePageState();
  }

  class _MyHomePageState extends State<MyHomePage> {


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          const Images(
          image: NetworkImage('https://s2.qwant.com/thumbr/474x266/c/8/f187c10a03093415719d2feb55fb7a6992a3be66735c4c4e7ec3a9bd380455/th.jpg?u=https%3A%2F%2Ftse2.explicit.bing.net%2Fth%3Fid%3DOIP.fqZ9-PPqcG_cm0k3JfoINQHaEK%26pid%3DApi&q=0&b=1&p=0&a=0'),
          ),
          title: Text('Bienvenue'),
          backgroundColor: Colors.red,
        ),
        body: 
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Louis Nguyen',
          ),
        ), 
        const TextFormField(
          decoration: InputDecoration(
            hintText: 'Entrez votre email',
          ),
        ),

        // Add button
        ElevatedButton(
          onPressed: () {
              print("j'ai cliqué");
          },
          child: const Text('Cliquez ici'),
          ),
      );
      }
  }

        
          
