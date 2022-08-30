class ItemModel {
  String name = '';
  String id = '';

  ItemModel(this.name, {this.id = ''});

  ItemModel.fromMap(this.id, Map<String, dynamic> doc) {
    name = doc['name'];
  }
}
