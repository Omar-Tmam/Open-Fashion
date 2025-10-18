import 'package:flutter/material.dart';
import 'package:open_fashion/Core/widgets/custom_app_bar.dart';
import 'package:open_fashion/Features/home_view/data/models/product_model.dart';
import 'package:open_fashion/Features/product_details/presentation/views/widgets/product_details_view_body.dart';

class ProductDetailsMobileView extends StatelessWidget {
  const ProductDetailsMobileView({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(), body: ProductDetailsViewBody(productModel: productModel,));
  }
}
