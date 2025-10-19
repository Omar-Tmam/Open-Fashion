import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/Core/assets.dart';
import 'package:open_fashion/Core/utils/app_router.dart';
import 'package:open_fashion/Core/widgets/custom_button.dart';
import 'package:open_fashion/Core/widgets/header_widget.dart';
import 'package:open_fashion/Features/home_view/data/models/product_model.dart';
import 'package:open_fashion/Features/product_details/data/models/order_model.dart';
import 'package:open_fashion/Features/product_details/presentation/views/widgets/cart_widget.dart';
import 'package:open_fashion/Features/product_details/presentation/views/widgets/delivery_section.dart';
import 'package:open_fashion/Features/product_details/presentation/views/widgets/total_price_section.dart';

class ProductDetailsViewBody extends StatefulWidget {
  const ProductDetailsViewBody({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<ProductDetailsViewBody> createState() => _ProductDetailsViewBodyState();
}

class _ProductDetailsViewBodyState extends State<ProductDetailsViewBody> {
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> itemCountNotifier = ValueNotifier(1);
    return Center(
      child: Column(
        children: [
          Gap(34),
          HeaderWidget(title: 'checkout'),
          Gap(20),
          CartWidget(productModel: widget.productModel, itemContNotifer: itemCountNotifier),
          Gap(20),
          DeliverySection(),
          Spacer(),
          TotalPriceSection(productModel: widget.productModel, itemContNotifier: itemCountNotifier),
          Gap(22),
          CustomButton(
            onTap: () {
              context.push(
                AppRouter.kShippingView,
                extra: OrderModel(
                  productModel: widget.productModel,
                  quantity: itemCountNotifier.value,
                  totalPrice: itemCountNotifier.value * widget.productModel.price,
                ),
              );
            },
            widget: SvgPicture.asset(Assets.imgsShoppingbag, width: 26),
            text: 'checkout',
          ),
          Gap(20),
        ],
      ),
    );
  }
}
