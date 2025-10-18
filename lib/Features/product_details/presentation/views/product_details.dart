import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/custom_adaptive_layout.dart';
import 'package:open_fashion/Features/home_view/data/models/product_model.dart';
import 'package:open_fashion/Features/product_details/presentation/views/product_details_mobile_view.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return CustomAdaptiveLayout(
      mobileLayout: (context) => ProductDetailsMobileView(productModel: productModel,),
      tabletLayout: (context) => SizedBox(),
    );
  }
}
