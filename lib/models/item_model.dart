class ItemModel {
  String name = "";

  ItemModel(this.name);

  ItemModel.fromMap(Map<String, dynamic> doc) {
    name = doc['name'];
  }
}
