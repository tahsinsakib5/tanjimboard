import 'package:flutter/material.dart';
import 'package:tanjibbord/adminpane/adminpanel.dart';
import 'package:tanjibbord/resultsearchpage.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "AIzaSyB9tvIW2p3SPRfff-362pKH_BAOc0tRd7E",
  authDomain: "again-15d35.firebaseapp.com",
  projectId: "again-15d35",
  storageBucket: "again-15d35.appspot.com",
  messagingSenderId: "713538178850",
  appId: "1:713538178850:web:203cd76b6cd0440b599f7b",
  measurementId: "G-9GKP9C4H0V")
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Adminpanel(),
    );
  }
}
