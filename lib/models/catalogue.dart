class Catalogue {
  final num id;
  final String name;
  final String description;
  final num price;
  final String image;

  Catalogue(this.id, this.name, this.description, this.price, this.image);
}

class Items {
  static List<Catalogue> list = [
    Catalogue(1, "iPhone 12", "Apple product", 999, ""),
    Catalogue(1, "iPhone 13", "Apple product", 999, ""),
    Catalogue(1, "iPhone 12 Pro", "Apple product", 999, ""),
    Catalogue(1, "iPhone 13 Pro", "Apple product", 999, ""),
  ];
}
