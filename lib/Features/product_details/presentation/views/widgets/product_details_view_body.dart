import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/Core/assets.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Features/home_view/data/models/product_model.dart';
import 'package:open_fashion/Features/product_details/presentation/views/widgets/cart_widget.dart';
import 'package:open_fashion/Features/product_details/presentation/views/widgets/delivery_section.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Gap(34),
          Text('Checkout'.toUpperCase(), style: AppStyles.title18(context).copyWith(fontSize: 24)),
          SvgPicture.asset(
            Assets.imgs12,
            colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color!, BlendMode.srcIn),
          ),
          Gap(20),
          CartWidget(productModel: productModel),
          Gap(20),
          DeliverySection(),
        ],
      ),
    );
  }
}



