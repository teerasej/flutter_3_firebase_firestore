import 'package:flutter/material.dart';
import 'package:flutter_3_firebase_firestore/pages/home_page.dart';
import 'package:flutter_3_firebase_firestore/pages/new_item_page.dart';
import 'package:flutter_3_firebase_firestore/utils/route_map.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nextflow - Firebase firestore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RouteMap.home,
      routes: {
        RouteMap.home: (context) => HomePage(),
        RouteMap.item_new: (context) => NewItemPage(),
      },
    );
  }
}
