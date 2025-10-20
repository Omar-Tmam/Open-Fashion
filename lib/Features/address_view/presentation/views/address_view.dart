import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/custom_adaptive_layout.dart';
import 'package:open_fashion/Features/address_view/presentation/views/address_view_mobile.dart';
import 'package:open_fashion/Features/product_details/data/models/order_model.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key, required this.orderModel});
  final OrderModel orderModel;

  @override
  Widget build(BuildContext context) {
    return CustomAdaptiveLayout(
      mobileLayout: (context) => AddressViewMobile(orderModel: orderModel,),
      tabletLayout: (context) => SizedBox(),
    );
  }
}
