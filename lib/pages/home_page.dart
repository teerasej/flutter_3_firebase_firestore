import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3_firebase_firestore/models/item_model.dart';
import 'package:flutter_3_firebase_firestore/utils/route_map.dart';

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
              Navigator.pushNamed(context, RouteMap.item_new).then((value) {
                setState(() {});
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: FutureBuilder(
        future: _db.collection('items').get(),
        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.hasData) {
            var docs = snapshot.data!.docs;
            _itemModels = docs.map<ItemModel>(
              (e) {
                return ItemModel.fromMap(e.data());
              },
            ).toList();

            return ListView.builder(
              itemCount: _itemModels.length,
              itemBuilder: (BuildContext context, int index) {
                var item = _itemModels[index];
                return ListTile(
                  title: Text(item.name),
                );
              },
            );
          }

          return LinearProgressIndicator();
        },
      ),
    );
  }
}
