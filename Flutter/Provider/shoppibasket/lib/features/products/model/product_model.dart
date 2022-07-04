class Product {
  late String sId;
  late String name;
  late String image;
  late int total;
  late int price;

  Product({
    required this.sId,
    required this.name,
    required this.image,
    required this.total,
    required this.price,
  });

  Product.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    image = json['image'];
    total = json['total'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['image'] = image;
    data['total'] = total;
    data['price'] = price;
    return data;
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Product && o.sId == sId && o.name == name && o.image == image && o.total == total && o.price == price;
  }

  @override
  int get hashCode {
    return sId.hashCode ^ name.hashCode ^ image.hashCode ^ total.hashCode ^ price.hashCode;
  }
}
