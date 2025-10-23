// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:open_fashion/Features/address_view/data/models/address_model.dart';
import 'package:open_fashion/Features/home_view/data/models/product_model.dart';
import 'package:open_fashion/Features/payment_view/data/models/payment_model.dart';

class OrderModel {
  final ProductModel productModel;
  final int quantity;
  final double totalPrice;
  AddressModel? addressModel;
  final PaymentModel? paymentModel;

  OrderModel({
    required this.productModel,
    required this.quantity,
    required this.totalPrice,
    this.addressModel,
    this.paymentModel,
  });

  OrderModel copyWith({
    ProductModel? productModel,
    int? quantity,
    double? totalPrice,
    AddressModel? addressModel,
    PaymentModel? paymentModel,
  }) {
    return OrderModel(
      productModel: productModel ?? this.productModel,
      quantity: quantity ?? this.quantity,
      totalPrice: totalPrice ?? this.totalPrice,
      addressModel: addressModel ?? this.addressModel,
      paymentModel: paymentModel ?? this.paymentModel,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productModel': productModel.toMap(),
      'quantity': quantity,
      'totalPrice': totalPrice,
      'addressModel': addressModel?.toMap(),
      'paymentModel': paymentModel?.toMap(),
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      productModel: ProductModel.fromMap(map['productModel'] as Map<String,dynamic>),
      quantity: map['quantity'] as int,
      totalPrice: map['totalPrice'] as double,
      addressModel: map['addressModel'] != null ? AddressModel.fromMap(map['addressModel'] as Map<String,dynamic>) : null,
      paymentModel: map['paymentModel'] != null ? PaymentModel.fromMap(map['paymentModel'] as Map<String,dynamic>) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderModel.fromJson(String source) => OrderModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'OrderModel(productModel: $productModel, quantity: $quantity, totalPrice: $totalPrice, addressModel: $addressModel, paymentModel: $paymentModel)';
  }

  @override
  bool operator ==(covariant OrderModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.productModel == productModel &&
      other.quantity == quantity &&
      other.totalPrice == totalPrice &&
      other.addressModel == addressModel &&
      other.paymentModel == paymentModel;
  }

  @override
  int get hashCode {
    return productModel.hashCode ^
      quantity.hashCode ^
      totalPrice.hashCode ^
      addressModel.hashCode ^
      paymentModel.hashCode;
  }
}
