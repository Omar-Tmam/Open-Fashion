import 'package:open_fashion/Features/address_view/data/models/address_model.dart';
import 'package:open_fashion/Features/home_view/data/models/product_model.dart';
import 'package:open_fashion/Features/payment_view/data/models/payment_model.dart';

class OrderModel {
  final ProductModel productModel;
  final int quantity;
  final double totalPrice;
  AddressModel? addressModel;
  final PaymentModel? paymentModel;

  OrderModel( {
     this.paymentModel,
    required this.productModel,
    required this.quantity,
    required this.totalPrice,
    this.addressModel,
  });
}
