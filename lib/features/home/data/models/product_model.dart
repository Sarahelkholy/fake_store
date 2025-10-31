import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  RatingData? rating;

  ProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}

@JsonSerializable()
class RatingData {
  double? rate;
  int? count;

  RatingData({this.rate, this.count});

  factory RatingData.fromJson(Map<String, dynamic> json) =>
      _$RatingDataFromJson(json);

  Map<String, dynamic> toJson() => _$RatingDataToJson(this);
}
