import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3_firebase_firestore/providers/item_provider.dart';
import 'package:provider/provider.dart';

class EditItemPage extends StatelessWidget {
  EditItemPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  String _updateItemName = '';
  final _db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    var editingItem = context.read<ItemProvider>().editingItem;
    _updateItemName = editingItem?.name ?? '';

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Item'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name:'),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                initialValue: _updateItemName,
                validator: (value) {
                  if (value != null && value.isNotEmpty) {
                    return null;
                  } else {
                    return 'Please fill the form';
                  }
                },
                onSaved: (value) {
                  _updateItemName = value ?? '';
                },
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      _db
                          .collection('items')
                          .doc(editingItem!.id)
                          .set({'name': _updateItemName});

                      Navigator.pop(context);
                    }
                  },
                  child: Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
