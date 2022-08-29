import 'package:flutter/material.dart';

class NewItemPage extends StatelessWidget {
  NewItemPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  String _newItemName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Item'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Text('Name:'),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              validator: (value) {
                if (value != null && value.isNotEmpty) {
                  return null;
                } else {
                  return 'Please fill the form';
                }
              },
              onSaved: (value) {
                _newItemName = value ?? '';
              },
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
