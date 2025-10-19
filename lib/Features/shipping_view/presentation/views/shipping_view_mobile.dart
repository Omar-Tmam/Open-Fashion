import 'package:flutter/material.dart';
import 'package:open_fashion/Core/widgets/custom_app_bar.dart';
import 'package:open_fashion/Features/product_details/data/models/order_model.dart';
import 'package:open_fashion/Features/shipping_view/presentation/views/widgets/shipping_view_body.dart';

class ShippingViewMobile extends StatelessWidget {
  const ShippingViewMobile({super.key, required this.orderModel});
  final OrderModel orderModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: ShippingViewBody(orderModel: orderModel),
    );
  }
}
