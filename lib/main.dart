import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'board_firestore/board_app.dart';

// void main() => runApp(new MaterialApp(
//       home: BoardApp(),
//     ));

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const BoardApp());
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: BoardApp()));
}
