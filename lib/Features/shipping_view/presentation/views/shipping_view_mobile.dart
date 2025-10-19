import 'package:flutter/material.dart';
import 'package:open_fashion/Core/widgets/custom_app_bar.dart';
import 'package:open_fashion/Features/shipping_view/presentation/views/widgets/shipping_view_body.dart';

class ShippingViewMobile extends StatelessWidget {
  const ShippingViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: ShippingViewBody(),
    );
  }
}