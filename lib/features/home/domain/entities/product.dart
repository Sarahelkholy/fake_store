class Product {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  List<RatingData>? ratingData;
  Product({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.ratingData,
  });
}

class RatingData {
  double? rate;
  int? count;
  RatingData({this.rate, this.count});
}
