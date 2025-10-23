import 'package:flutter/material.dart';
import 'package:open_fashion/Core/widgets/custom_app_bar.dart';
import 'package:open_fashion/Features/payment_view/presentation/views/widgets/mobile_payment_view_body.dart';

class MobilePaymentView extends StatelessWidget {
  const MobilePaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(), body: MobilePaymentViewBody());
  }
}
