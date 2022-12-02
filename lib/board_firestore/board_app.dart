import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class BoardApp extends StatefulWidget {
  const BoardApp({super.key});

  @override
  State<BoardApp> createState() => _BoardAppState();
}

class _BoardAppState extends State<BoardApp> {
  // ignore: non_constant_identifier_names
  Stream FirestoreDb =
      FirebaseFirestore.instance.collection('board').doc().snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Community Board")),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.4,
        child: StreamBuilder(
            stream: FirestoreDb,
            
            builder: 
            (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) return CircularProgressIndicator();
              return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    return Text(snapshot.data!.docs[index]['title']);
                  });
            }),
      ),
    );
  }
}