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
        title: Text('Bienvenue'),
        backgroundColor: Colors.red,
      ),
      // Add text fields
      body:
      // Stack or Column or Row
      Column(
        children : [
            ElevatedButton(
                onPressed: () {
                  print ('Bouton cliqué');
                },
                child: Text('Action'),
            ),
            Text('Bonjour'),
             Container (
               height: 100,
               width: 100,
               color: Colors.blue,
               child: Text('Container'),
             ),
             SingleChildView(),
                MultipleChildView(),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: Text('Expanded'),
                  ),
                ),


        ]),
      );
    }
}

    
