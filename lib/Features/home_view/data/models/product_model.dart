// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:open_fashion/Core/assets.dart';

class ProductModel {
  final String image;
  final String description;
  final String name;
  final double price;

  ProductModel({
    required this.image,
    required this.price,
    required this.description,
    required this.name,
  });
  static List<ProductModel> products = [
    ProductModel(
      image: Assets.imgsDress,
      price: 150,
      description: 'Elegant summer dress made from soft fabric, perfect for casual outings.',
      name: 'Elegant Summer Dress',
    ),
    ProductModel(
      image: Assets.imgsEarRing,
      price: 600,
      description: 'Luxury gold-plated earrings with a modern minimalist design.',
      name: 'Earrings',
    ),
    ProductModel(
      image: Assets.imgsBoots,
      price: 100,
      description: 'Stylish leather ankle boots that combine comfort with timeless fashion.',
      name: 'Leather Ankle Boots',
    ),
    ProductModel(
      image: Assets.imgsRing,
      price: 999,
      description: 'Sparkling diamond ring crafted with precision for a classic look.',
      name: 'Diamond Ring',
    ),
    ProductModel(
      image: Assets.imgsBracelet,
      price: 1500,
      description: 'Delicate gold bracelet featuring elegant chain details.',
      name: 'Gold Bracelet',
    ),
    ProductModel(
      image: Assets.imgsBracelets,
      price: 3500,
      description: 'Luxury bracelet set with unique textures and premium materials.',
      name: 'Luxury Bracelet Set',
    ),
  ];

  ProductModel copyWith({
    String? image,
    String? description,
    String? name,
    double? price,
  }) {
    return ProductModel(
      image: image ?? this.image,
      description: description ?? this.description,
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'description': description,
      'name': name,
      'price': price,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      image: map['image'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      price: map['price'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(image: $image, description: $description, name: $name, price: $price)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.image == image &&
      other.description == description &&
      other.name == name &&
      other.price == price;
  }

  @override
  int get hashCode {
    return image.hashCode ^
      description.hashCode ^
      name.hashCode ^
      price.hashCode;
  }
}
