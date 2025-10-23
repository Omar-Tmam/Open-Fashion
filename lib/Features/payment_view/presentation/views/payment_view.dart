import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/custom_adaptive_layout.dart';
import 'package:open_fashion/Features/payment_view/presentation/views/mobile_payment_view.dart';
import 'package:open_fashion/Features/product_details/data/models/order_model.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key, required this.orderNotifier});
  final ValueNotifier<OrderModel> orderNotifier;

  @override
  Widget build(BuildContext context) {
    return CustomAdaptiveLayout(mobileLayout: (context) => MobilePaymentView(orderNotifier: orderNotifier,),tabletLayout: (context) => SizedBox(),);
  }
}