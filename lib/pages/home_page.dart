import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3_firebase_firestore/models/item_model.dart';
import 'package:flutter_3_firebase_firestore/providers/item_provider.dart';
import 'package:flutter_3_firebase_firestore/utils/route_map.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _db = FirebaseFirestore.instance;

  List<ItemModel> _itemModels = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteMap.item_new);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
