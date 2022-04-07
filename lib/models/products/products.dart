class Products {
  int? id;
  String? name;
  String? image;

  Products({this.id, this.name, this.image});

  Products.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    name = json['name'];
    image = json[image];
  }
}
