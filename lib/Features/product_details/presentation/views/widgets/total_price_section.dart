import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Features/home_view/data/models/product_model.dart';

class TotalPriceSection extends StatelessWidget {
  const TotalPriceSection({super.key, required this.itemContNotifier, required this.productModel});
  final ValueNotifier<int> itemContNotifier;
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text('Est. Total'.toUpperCase(), style: AppStyles.title18(context)),
          Spacer(),
          ValueListenableBuilder(
            valueListenable: itemContNotifier,
            builder: (context, value, child) {
              return Text(
                '\$${(value * productModel.price).toString()}',
                style: AppStyles.title18(context).copyWith(color: Colors.orange),
              );
            },
          ),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}
