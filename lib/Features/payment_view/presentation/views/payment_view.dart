import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/custom_adaptive_layout.dart';
import 'package:open_fashion/Features/payment_view/presentation/views/mobile_payment_view.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAdaptiveLayout(mobileLayout: (context) => MobilePaymentView(),tabletLayout: (context) => SizedBox(),);
  }
}