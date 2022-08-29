import 'package:flutter/material.dart';
import 'package:flutter_3_firebase_firestore/models/item_model.dart';
import 'package:flutter_3_firebase_firestore/utils/route_map.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

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
