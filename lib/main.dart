import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'screens/mainpage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp(
    name: 'db2',
    options: Platform.isIOS || Platform.isMacOS
        ? const FirebaseOptions(
            appId: '1:310804505192:ios:da389b1dc7197285cb91dd',
            apiKey: 'AIzaSyCkec95PhJGlhmU9vZXzyesk42EVDVTuTo',
            projectId: 'uber-clone-d6e29',
            messagingSenderId: '310804505192',
            databaseURL: 'https://uber-clone-d6e29-default-rtdb.europe-west1.firebasedatabase.app',
          )
        : const FirebaseOptions(
            appId: '1:310804505192:android:07e57fefc9466721cb91dd',
            apiKey: 'AIzaSyDexGaaZJSs3SrGHIUf1_9lTQcrCjbsQsQ',
            messagingSenderId: '310804505192',
            projectId: 'uber-clone-d6e29',
            databaseURL: 'https://uber-clone-d6e29-default-rtdb.europe-west1.firebasedatabase.app',
          ),
  );
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
