import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/custom_adaptive_layout.dart';
import 'package:open_fashion/Features/product_details/presentation/views/product_details_mobile_view.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAdaptiveLayout(mobileLayout: (context) => ProductDetailsMobileView(),tabletLayout:(context) => SizedBox(),);
  }
}