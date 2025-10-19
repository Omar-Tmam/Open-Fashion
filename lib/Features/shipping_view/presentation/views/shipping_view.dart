import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/custom_adaptive_layout.dart';
import 'package:open_fashion/Features/product_details/data/models/order_model.dart';
import 'package:open_fashion/Features/shipping_view/presentation/views/shipping_view_mobile.dart';

class ShippingView extends StatelessWidget {
  const ShippingView({super.key, required this.orderModel});
  final OrderModel orderModel;

  @override
  Widget build(BuildContext context) {
    return CustomAdaptiveLayout(
      mobileLayout: (context) => ShippingViewMobile(orderModel: orderModel,),
      tabletLayout: (context) => SizedBox(),
    );
  }
}
