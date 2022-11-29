import 'package:chat/interfaz/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBtQmILexh6nij6i6A_NHV5wppGZi5GPFs",
          authDomain: "reto3-chat-cd380.firebaseapp.com",
          projectId: "reto3-chat-cd380",
          storageBucket: "reto3-chat-cd380.appspot.com",
          messagingSenderId: "297853010759",
          appId: "1:297853010759:web:09842b69e900200075c262",
          measurementId: "G-XFKZN5P8XW"));
  runApp(const MyApp());
}
