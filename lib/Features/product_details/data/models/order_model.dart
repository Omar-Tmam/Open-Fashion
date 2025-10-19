
import 'package:open_fashion/Features/home_view/data/models/product_model.dart';

class OrderModel {
  final ProductModel productModel;
  final int quantity;
  final double totalPrice;

  OrderModel({required this.productModel, required this.quantity, required this.totalPrice});
}
