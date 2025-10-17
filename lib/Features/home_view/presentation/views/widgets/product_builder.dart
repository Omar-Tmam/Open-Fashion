import 'package:flutter/material.dart';
import 'package:open_fashion/Features/home_view/data/models/product_model.dart';
import 'package:open_fashion/Features/home_view/presentation/views/widgets/product_item.dart';

class ProductBuilder extends StatelessWidget {
  const ProductBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        childAspectRatio: 0.47,
        crossAxisCount: 2,
      ),
    
      itemCount: ProductModel.products.length,
      itemBuilder: (context, index) {
        return ProductItem(productModel: ProductModel.products[index]);
      },
    );
  }
}

