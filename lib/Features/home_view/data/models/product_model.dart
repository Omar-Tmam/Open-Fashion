import 'package:open_fashion/Core/assets.dart';

class ProductModel {
  final String image, price, description, name;

  ProductModel({
    required this.image,
    required this.price,
    required this.description,
    required this.name,
  });
  static List<ProductModel> products = [
    ProductModel(
      image: Assets.imgsDress,
      price: '150\$',
      description: 'Elegant summer dress made from soft fabric, perfect for casual outings.',
      name: 'Elegant Summer Dress',
    ),
    ProductModel(
      image: Assets.imgsEarRing,
      price: '600\$',
      description: 'Luxury gold-plated earrings with a modern minimalist design.',
      name: 'Golden Earrings',
    ),
    ProductModel(
      image: Assets.imgsBoots,
      price: '100\$',
      description: 'Stylish leather ankle boots that combine comfort with timeless fashion.',
      name: 'Leather Ankle Boots',
    ),
    ProductModel(
      image: Assets.imgsRing,
      price: '999\$',
      description: 'Sparkling diamond ring crafted with precision for a classic look.',
      name: 'Diamond Ring',
    ),
    ProductModel(
      image: Assets.imgsBracelet,
      price: '1500\$',
      description: 'Delicate gold bracelet featuring elegant chain details.',
      name: 'Gold Bracelet',
    ),
    ProductModel(
      image: Assets.imgsBracelets,
      price: '3500\$',
      description: 'Luxury bracelet set with unique textures and premium materials.',
      name: 'Luxury Bracelet Set',
    ),
  ];
}
