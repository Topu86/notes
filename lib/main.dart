import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:note/show.dart';



Future< void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
           ? await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: 'AIzaSyD1anPFF1h_sjhuS3tNgsGVdlPS4GnkXu0',
        appId: '1:19290231109:android:e3c32e57579811e6f5ae2c',
        messagingSenderId: '19290231109',
        projectId: 'notes-abc30'
    ))
  :await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white))),
      home: Showdata(),
    );
  }
}