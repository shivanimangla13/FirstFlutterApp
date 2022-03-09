class Catalogue {
  num id;
  String name;
  String description;
  num price;
  String image;

  Catalogue(this.id, this.name, this.description, this.price, this.image);
  factory Catalogue.fromMap(Map<String, dynamic> map) {
    var data = Catalogue(
        map["id"], map["name"], map["desc"], map["price"], map["image"]);
    return data;
  }
}


// class Items {
//   static List<Catalogue> list = [
//     Catalogue(1, "iPhone 12", "Apple product", 999, ""),
//     Catalogue(1, "iPhone 13", "Apple product", 999, ""),
//     Catalogue(1, "iPhone 12 Pro", "Apple product", 999, ""),
//     Catalogue(1, "iPhone 13 Pro", "Apple product", 999, ""),
//   ];
//}
